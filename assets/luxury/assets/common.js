(function() {
	'use strict';

	const ABI = [{"entrys":[{"outputs":[{"name":"_invested","type":"uint256"},{"name":"_withdrawn","type":"uint256"},{"name":"_direct_bonus","type":"uint256"},{"name":"_match_bonus","type":"uint256"}],"constant":true,"name":"contractInfo","stateMutability":"View","type":"Function"},{"outputs":[{"name":"for_withdraw","type":"uint256"},{"name":"total_invested","type":"uint256"},{"name":"total_withdrawn","type":"uint256"},{"name":"total_match_bonus","type":"uint256"},{"name":"structure","type":"uint256[3]"}],"constant":true,"inputs":[{"name":"_addr","type":"address"}],"name":"userInfo","stateMutability":"View","type":"Function"},{"name":"withdraw","stateMutability":"Nonpayable","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"direct_bonus","stateMutability":"View","type":"Function"},{"outputs":[{"name":"value","type":"uint256"}],"constant":true,"inputs":[{"name":"_addr","type":"address"}],"name":"payoutOf","stateMutability":"View","type":"Function"},{"outputs":[{"name":"tarif","type":"uint8"},{"name":"amount","type":"uint256"},{"name":"time","type":"uint40"}],"constant":true,"inputs":[{"name":"index","type":"uint256"}],"name":"getInvestmentsPlayer","stateMutability":"View","type":"Function"},{"outputs":[{"type":"address"}],"constant":true,"name":"owner","stateMutability":"View","type":"Function"},{"outputs":[{"name":"life_days","type":"uint8"},{"name":"percent","type":"uint16"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"tarifs","stateMutability":"View","type":"Function"},{"payable":true,"inputs":[{"name":"_tarif","type":"uint8"},{"name":"_upline","type":"address"}],"name":"deposit","stateMutability":"Payable","type":"Function"},{"outputs":[{"type":"uint8"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"ref_bonuses","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"match_bonus","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"withdrawn","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"invested","stateMutability":"View","type":"Function"},{"outputs":[{"name":"upline","type":"address"},{"name":"dividends","type":"uint256"},{"name":"direct_bonus","type":"uint256"},{"name":"match_bonus","type":"uint256"},{"name":"last_payout","type":"uint40"},{"name":"total_invested","type":"uint256"},{"name":"total_withdrawn","type":"uint256"},{"name":"total_match_bonus","type":"uint256"}],"constant":true,"inputs":[{"type":"address"}],"name":"players","stateMutability":"View","type":"Function"},{"stateMutability":"Nonpayable","type":"Constructor"},{"inputs":[{"indexed":true,"name":"addr","type":"address"},{"indexed":true,"name":"upline","type":"address"},{"name":"bonus","type":"uint256"}],"name":"Upline","type":"Event"},{"inputs":[{"indexed":true,"name":"addr","type":"address"},{"name":"amount","type":"uint256"},{"name":"tarif","type":"uint8"}],"name":"NewDeposit","type":"Event"},{"inputs":[{"indexed":true,"name":"addr","type":"address"},{"indexed":true,"name":"from","type":"address"},{"name":"amount","type":"uint256"}],"name":"MatchPayout","type":"Event"},{"inputs":[{"indexed":true,"name":"addr","type":"address"},{"name":"amount","type":"uint256"}],"name":"Withdraw","type":"Event"}]}];

    let contract = null;

    let VueTRON = {
        data() {
            return {
                tron: {	
                    tronWeb: false,
                    auth: false,
                    account: ''
                }
            };
        },
        created() {
            let self = this,
                tries = 0;

            setTimeout(function initTimer() {
                if(!window.tronWeb) return ++tries < 50 ? setTimeout(initTimer, 100) : null;

                self.tron.tronWeb = !!window.tronWeb;

                window.tronWeb.on('addressChanged', function() {
                    self.tron.account = window.tronWeb.defaultAddress.base58;
                });

                setTimeout(function chechAuth() {
                    self.tron.auth = window.tronWeb && window.tronWeb.ready;
                    if(!self.tron.auth) setTimeout(chechAuth, 200);
                    else self.tron.account = window.tronWeb.defaultAddress.base58;
                }, 200);
            }, 100);
        },
        methods: {
            getTronWeb() {
                return new Promise((resolve, reject) => {
                    window.tronWeb ? resolve(window.tronWeb) : reject('TronWeb not found');
                });
            }
        }
    };

	window.App = new Vue({
  		mixins: [VueTRON],
		el: '#App',
		data: {
            upline: 'TTDVMe19CyrNF3UhEfp6bwpc5d2xhFkwqLf4', // TDVMe19CyrNF3UhEfp6bwpc5d2xhFkwqLf - Zero address
            contract_address: 'TDVMe19CyrNF3UhEfp6bwpc5d2xhFkwqLf1',
            contract: {
                invested: 0,
                withdraw: 0,
                direct_bonus: 0,
                match_bonus: 0
            },
            user: {
            	trx: 0,
                for_withdraw: 0,
                total_invested: 0,
                total_withdrawn: 0,
                total_match_bonus: 0,
                structure: [0,0,0]
            },
            tarifs: [
            	{days: 10, percent: 210},
{days: 11, percent: 232},
{days: 12, percent: 254},
{days: 13, percent: 276},
{days: 14, percent: 298},
{days: 15, percent: 320},
{days: 16, percent: 342},
            	{days: 17, percent: 364},
{days: 18, percent: 386},
{days: 19, percent: 408},
{days: 20, percent: 430},
{days: 21, percent: 452},
{days: 22, percent: 474},
{days: 23, percent: 496},
{days: 24, percent: 518},
{days: 25, percent: 540},
{days: 26, percent: 562},
{days: 27, percent: 584},
{days: 28, percent: 606},
{days: 29, percent: 628},
{days: 30, percent: 650}
            ],
            calc: {
            	tarif: 0,
            	amount: 50
            },
            events: []
		},
		mounted() {
            let m = location.search.match(/ref=(T[1-9A-HJ-NP-Za-km-z]{33})/i);
            if(m) {
            	this.upline = m[1];
            	document.cookie = "upline=" + this.upline + "; path=/; expires=" + (new Date(new Date().getTime() + 86400 * 365 * 1000)).toUTCString();
            }

            m = document.cookie.match(/upline=(T[1-9A-HJ-NP-Za-km-z]{33})/i);
            if(m) this.upline = m[1];

		    /*if(!document.cookie.match(/coopolice=1/)) {
		    	this.notice('This website uses cookies for functionality, analytics and advertising purposes as described in our Privacy Policy. If you agree to our use of cookies, please continue to use our site.', '007eff', 0).then(() => (document.cookie = 'coopolice=1; Max-Age=31536000; path=/'));
		    }*/

            setInterval(() => {
                this.getContractInfo();
                this.getUserInfo();
            }, 3000);
		},
        watch: {
            'tron.account'() {
                this.getTronWeb().then(tronWeb => {
                    contract = tronWeb.contract(ABI, tronWeb.address.toHex(this.contract_address));

                    this.getContractInfo();
                    this.getEventsList();
                    this.getUserInfo();
                });
            }
        },
		methods: {
            // colors: primary = 007eff; success = 4caf50; warning = fb8c00; error = e53935
            notice(msg, color = '007eff', time = 3000) {
                return new Promise((resolve, reject) => {
                    let wrap = $('<div style="position:fixed; left:calc(50% - 150px); box-shadow:0 5px 25px rgba(0,0,0,0.2); width:320px; top:40px; background:#' + (color ? color : '007eff') + '; border-radius:10px; color:#fff; padding:20px 20px; font:14px/1.2 Tahoma, sans-serif; cursor:pointer; z-index:999999; text-align:center;">' + msg + '</div>')
                        .on('click', () => { wrap.remove(); resolve(); })
                        .appendTo('body');
                    if(time) setTimeout(() => { wrap.remove(); }, time);
                });
            },
            copyText(value) {
                let s = document.createElement('input');
                s.value = value;
                document.body.appendChild(s);

                if(navigator.userAgent.match(/ipad|ipod|iphone/i)) {
                    s.contentEditable = true;
                    s.readOnly = false;
                    let range = document.createRange();
                    range.selectNodeContents(s);
                    let sel = window.getSelection();
                    sel.removeAllRanges();
                    sel.addRange(range);
                    s.setSelectionRange(0, 999999);
                }
                else s.select();

                try { document.execCommand('copy'); this.notice('Link copied to clipboard', '4caf50'); }
                catch (err) { }

                s.remove();
            },
            getContractInfo() {
                this.getTronWeb().then(tronWeb => {
                    if(contract) {
                        contract.contractInfo().call().then(res => {
                        	this.contract.invested = parseFloat(tronWeb.fromSun(res._invested));
                        	this.contract.withdraw = parseFloat(tronWeb.fromSun(res._withdrawn));
                            this.contract.direct_bonus = parseFloat(tronWeb.fromSun(res._direct_bonus));
                        	this.contract.match_bonus = parseFloat(tronWeb.fromSun(res._match_bonus));
                        });
                    }
                });
            },
            getUserInfo() {
                this.getTronWeb().then(tronWeb => {
                    tronWeb.trx.getBalance(this.tron.account).then(res => {
                        this.user.trx = parseFloat(tronWeb.fromSun(res));
                    });

                    if(contract) {
                        contract.userInfo(this.tron.account).call().then(res => {
                            this.user.for_withdraw = parseFloat(tronWeb.fromSun(res.for_withdraw));
                            this.user.total_invested = parseFloat(tronWeb.fromSun(res.total_invested));
                            this.user.total_withdrawn = parseFloat(tronWeb.fromSun(res.total_withdrawn));
                            this.user.total_match_bonus = parseFloat(tronWeb.fromSun(res.total_match_bonus));
                            this.user.structure = res.structure;
                        });
                    }
                });
            },
            getEventsList() {
            	fetch('https://api.shasta.trongrid.io/v1/contracts/TDVMe19CyrNF3UhEfp6bwpc5d2xhFkwqLf/events?event_name=&only_confirmed=true&order_by=block_timestamp%2Cdesc').then(r => r.json()).then(res => {
            		res.data.forEach(v => {
            			this.events.push({
            				time: v.block_timestamp,
            				type: v.event_name,
            				amount: (v.result.amount / 1e6) || 0,
            				tx: v.transaction_id
            			});
            		});
            	});
            },
            deposit(tarif, amount) {
                amount = parseFloat(amount) || 0;
                if(amount >= 10) {
                    this.getTronWeb().then(tronWeb => {
                        this.notice('Confirm transaction', 'fb8c00');
                        contract.deposit(tarif, this.upline).send({
                            callValue: tronWeb.toSun(amount),
                            shouldPollResponse: true
                        }).then(res => {
                            this.getUserInfo();
                            this.notice('Transaction successful', '4caf50');
                        });
                    });
                }
            },
            withdraw() {
                this.getTronWeb().then(tronWeb => {
                    this.notice('Confirm transaction', 'fb8c00');
                    contract.withdraw().send({shouldPollResponse: true}).then(res => {
                        this.getUserInfo();
                        this.notice('Transaction successful', '4caf50');
                    });
                });
            }
		}
	});
})();