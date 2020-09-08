var address = "TKvtGXCinCseccLJAm4WSSrLVZH1N3DHEa";
var undefinedAddress = "THuHWsfUCCG3MxchoXBKmXahnEyKQCizdM";
var x3MatrixPrices = [100, 100, 200, 100, 800, 1500, 3000, 9000,];
var matrixAbi = {"entrys":[{"stateMutability":"Nonpayable","type":"Constructor"},{"inputs":[{"indexed":true,"name":"_user","type":"address"},{"indexed":true,"name":"_referral","type":"address"},{"name":"_level","type":"uint256"},{"name":"_time","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"getMoneyForLevelEvent","type":"Event"},{"inputs":[{"indexed":true,"name":"_user","type":"address"},{"indexed":true,"name":"_receiver","type":"address"},{"name":"_level","type":"uint256"},{"name":"_time","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"getPoolPayment","type":"Event"},{"inputs":[{"indexed":true,"name":"_user","type":"address"},{"indexed":true,"name":"_receiver","type":"address"},{"name":"_level","type":"uint256"},{"name":"_time","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"getPoolSponsorPayment","type":"Event"},{"inputs":[{"indexed":true,"name":"_user","type":"address"},{"name":"_level","type":"uint256"},{"name":"_time","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"getReInvestPoolPayment","type":"Event"},{"inputs":[{"indexed":true,"name":"_user","type":"address"},{"indexed":true,"name":"_referrer","type":"address"},{"name":"_time","type":"uint256"}],"name":"regLevelEvent","type":"Event"},{"inputs":[{"indexed":true,"name":"_user","type":"address"},{"name":"_level","type":"uint256"},{"name":"_time","type":"uint256"}],"name":"regPoolEntry","type":"Event"},{"outputs":[{"type":"uint256"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"LEVEL_PRICE","stateMutability":"View","type":"Function"},{"payable":true,"name":"buyPool1","stateMutability":"Payable","type":"Function"},{"payable":true,"name":"buyPool2","stateMutability":"Payable","type":"Function"},{"payable":true,"name":"buyPool3","stateMutability":"Payable","type":"Function"},{"payable":true,"name":"buyPool4","stateMutability":"Payable","type":"Function"},{"payable":true,"name":"buyPool5","stateMutability":"Payable","type":"Function"},{"payable":true,"name":"buyPool6","stateMutability":"Payable","type":"Function"},{"payable":true,"name":"buyPool7","stateMutability":"Payable","type":"Function"},{"payable":true,"name":"buyPool8","stateMutability":"Payable","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"currUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"getTrxBalance","stateMutability":"View","type":"Function"},{"outputs":[{"type":"address"}],"constant":true,"name":"ownerWallet","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool1activeUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool1currUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"address"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"pool1userList","stateMutability":"View","type":"Function"},{"outputs":[{"name":"isExist","type":"bool"},{"name":"id","type":"uint256"},{"name":"payment_received","type":"uint256"}],"constant":true,"inputs":[{"type":"address"}],"name":"pool1users","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool2activeUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool2currUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"address"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"pool2userList","stateMutability":"View","type":"Function"},{"outputs":[{"name":"isExist","type":"bool"},{"name":"id","type":"uint256"},{"name":"payment_received","type":"uint256"}],"constant":true,"inputs":[{"type":"address"}],"name":"pool2users","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool3activeUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool3currUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"address"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"pool3userList","stateMutability":"View","type":"Function"},{"outputs":[{"name":"isExist","type":"bool"},{"name":"id","type":"uint256"},{"name":"payment_received","type":"uint256"}],"constant":true,"inputs":[{"type":"address"}],"name":"pool3users","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool4activeUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool4currUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"address"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"pool4userList","stateMutability":"View","type":"Function"},{"outputs":[{"name":"isExist","type":"bool"},{"name":"id","type":"uint256"},{"name":"payment_received","type":"uint256"}],"constant":true,"inputs":[{"type":"address"}],"name":"pool4users","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool5activeUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool5currUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"address"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"pool5userList","stateMutability":"View","type":"Function"},{"outputs":[{"name":"isExist","type":"bool"},{"name":"id","type":"uint256"},{"name":"payment_received","type":"uint256"}],"constant":true,"inputs":[{"type":"address"}],"name":"pool5users","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool6activeUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool6currUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"address"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"pool6userList","stateMutability":"View","type":"Function"},{"outputs":[{"name":"isExist","type":"bool"},{"name":"id","type":"uint256"},{"name":"payment_received","type":"uint256"}],"constant":true,"inputs":[{"type":"address"}],"name":"pool6users","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool7activeUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool7currUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"address"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"pool7userList","stateMutability":"View","type":"Function"},{"outputs":[{"name":"isExist","type":"bool"},{"name":"id","type":"uint256"},{"name":"payment_received","type":"uint256"}],"constant":true,"inputs":[{"type":"address"}],"name":"pool7users","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool8activeUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"pool8currUserID","stateMutability":"View","type":"Function"},{"outputs":[{"type":"address"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"pool8userList","stateMutability":"View","type":"Function"},{"outputs":[{"name":"isExist","type":"bool"},{"name":"id","type":"uint256"},{"name":"payment_received","type":"uint256"}],"constant":true,"inputs":[{"type":"address"}],"name":"pool8users","stateMutability":"View","type":"Function"},{"payable":true,"inputs":[{"name":"_referrerID","type":"uint256"}],"name":"regUser","stateMutability":"Payable","type":"Function"},{"outputs":[{"name":"isExist","type":"bool"},{"name":"id","type":"uint256"},{"name":"referrerID","type":"uint256"},{"name":"referredUsers","type":"uint256"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"requests","stateMutability":"View","type":"Function"},{"outputs":[{"type":"uint256"}],"constant":true,"name":"totalEarned","stateMutability":"View","type":"Function"},{"outputs":[{"type":"address"}],"constant":true,"inputs":[{"type":"uint256"}],"name":"userList","stateMutability":"View","type":"Function"},{"outputs":[{"name":"isExist","type":"bool"},{"name":"id","type":"uint256"},{"name":"referrerID","type":"uint256"},{"name":"referredUsers","type":"uint256"}],"constant":true,"inputs":[{"type":"address"}],"name":"users","stateMutability":"View","type":"Function"},{"name":"withdraw","stateMutability":"Nonpayable","type":"Function"},{"inputs":[{"name":"_amount","type":"uint256"}],"name":"withdrawbala","stateMutability":"Nonpayable","type":"Function"}]};
var account = localStorage.getItem('loginaddress');
var MatrixInstance, MatrixContract;

function copyToClipboard(text) {
    console.log(text);
    var textArea = document.createElement("textarea");
    textArea.value = text;
    document.body.appendChild(textArea);
    textArea.select();
    try {
        var successful = document.execCommand('copy');
        var msg = successful ? 'successful' : 'unsuccessful';
        alert('Copying text command was ' + msg);
    } catch (err) {
        alert('Oops, unable to copy' + err);
    }
    document.body.removeChild(textArea);
}

function logout() {
    localStorage.removeItem('loginaddress');
    location.href = "tronninja.com/login.html";
}

function getFormatedDate(unixtimestamp) {
    var date = new Date(unix_timestamp * 1000);
    // Hours part from the timestamp
    var hours = date.getHours();
    // Minutes part from the timestamp
    var minutes = "0" + date.getMinutes();
    // Seconds part from the timestamp
    var seconds = "0" + date.getSeconds();

    // Will display time in 10:30:23 format
    var formattedTime = hours + ':' + minutes.substr(-2) + ':' + seconds.substr(-2);

    return formattedTime;
}
function hexToString(hex) {
    return tronWeb.address.fromHex(hex);
}
function addressToHex(address) {
    return "0x" + tronWeb.address.toHex(address).slice(2);
}
function onViewAddress() {
    window.open("https://.tronscan.org/#/address/" + account);
}

function onViewContractAddress() {
    window.open("https://tronscan.org/#/contract/" + address + "/code");
}

async function getUsdForTrx(trx) {
    var result = new Promise(function (res) {
        var xhttp3 = new XMLHttpRequest();
        xhttp3.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                // Typical action to be performed when the document is ready:
                var json = JSON.parse(xhttp3.responseText);
                res(json.trx_rate);
            }
        };
        var url = "https://tronninja.com/getTrxRate.asp";
        xhttp3.open("GET", url, true);
        xhttp3.send();
    });
    var dollar = await result;
    return (parseFloat(trx) * parseFloat(dollar)).toFixed(2);

}