# bind_api (EXPERIMENTAL)
Description for BIND.


This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen
For more information, please visit [https://www.bind.com/](https://www.bind.com/)

## Requirements

* Dart 2.12.0 or later OR Flutter 1.26.0 or later
* Dio 4.0.0+

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  bind_api: 0.2.1
```

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  bind_api:
    git:
      url: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  bind_api:
    path: /path/to/bind_api
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:bind_api/bind_api.dart';


final api = BindApi().getAuthApi();

try {
    final response = await api.whoAmI();
    print(response);
} catch on DioError (e) {
    print("Exception when calling AuthApi->whoAmI: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.thebind.uk/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*AuthApi*](doc/AuthApi.md) | [**whoAmI**](doc/AuthApi.md#whoami) | **GET** /auth/whoami/ | Who am I
[*BeneficiariesApi*](doc/BeneficiariesApi.md) | [**createBeneficiary**](doc/BeneficiariesApi.md#createbeneficiary) | **POST** /beneficiaries/ | Add new beneficiary
[*BeneficiariesApi*](doc/BeneficiariesApi.md) | [**deleteBeneficiary**](doc/BeneficiariesApi.md#deletebeneficiary) | **DELETE** /beneficiaries/{beneficiary_id}/ | Delete beneficiary
[*BeneficiariesApi*](doc/BeneficiariesApi.md) | [**estimateFiatTransfer**](doc/BeneficiariesApi.md#estimatefiattransfer) | **POST** /fiat/transfer/review/ | Preview of fiat transfer
[*BeneficiariesApi*](doc/BeneficiariesApi.md) | [**getBeneficiaries**](doc/BeneficiariesApi.md#getbeneficiaries) | **GET** /beneficiaries/ | List of beneficiaries of current user
[*BeneficiariesApi*](doc/BeneficiariesApi.md) | [**getBeneficiary**](doc/BeneficiariesApi.md#getbeneficiary) | **GET** /beneficiaries/{beneficiary_id}/ | Get beneficiary by id
[*BeneficiariesApi*](doc/BeneficiariesApi.md) | [**performFiatTransfer**](doc/BeneficiariesApi.md#performfiattransfer) | **POST** /fiat/transfer/ | Send money to outer bank account
[*BeneficiariesApi*](doc/BeneficiariesApi.md) | [**updateBeneficiary**](doc/BeneficiariesApi.md#updatebeneficiary) | **PATCH** /beneficiaries/{beneficiary_id}/ | Update beneficiary data
[*ContactsApi*](doc/ContactsApi.md) | [**addContactByUser**](doc/ContactsApi.md#addcontactbyuser) | **POST** /contacts/ | add user to contact
[*ContactsApi*](doc/ContactsApi.md) | [**checkContact**](doc/ContactsApi.md#checkcontact) | **GET** /contacts/{user_id}/check | Check if user_id is in contacts
[*ContactsApi*](doc/ContactsApi.md) | [**createInnerFiatRequest**](doc/ContactsApi.md#createinnerfiatrequest) | **POST** /fiat/request/ | Request fiat inside BIND
[*ContactsApi*](doc/ContactsApi.md) | [**createInnerFiatTransfer**](doc/ContactsApi.md#createinnerfiattransfer) | **POST** /fiat/send/ | Send fiat inside BIND
[*ContactsApi*](doc/ContactsApi.md) | [**generateQRCodeToken**](doc/ContactsApi.md#generateqrcodetoken) | **GET** /users/send/qr_code/ | Generate JWT token to share as QR code
[*ContactsApi*](doc/ContactsApi.md) | [**getContacts**](doc/ContactsApi.md#getcontacts) | **GET** /contacts/ | List of contacts of current user
[*ContactsApi*](doc/ContactsApi.md) | [**getInnerFiatTransferFee**](doc/ContactsApi.md#getinnerfiattransferfee) | **POST** /fiat/send/fee/ | 
[*ContactsApi*](doc/ContactsApi.md) | [**qRCodeGenerateView**](doc/ContactsApi.md#qrcodegenerateview) | **GET** /users/generate/qr_code/ | Generate QRCode with JWT token and return QRCode image
[*ContactsApi*](doc/ContactsApi.md) | [**readJWTToken**](doc/ContactsApi.md#readjwttoken) | **POST** /users/send/qr_code/ | Check JWT validity and read user from it
[*ContactsApi*](doc/ContactsApi.md) | [**syncContacts**](doc/ContactsApi.md#synccontacts) | **POST** /contacts/sync/ | Sync mobile phone contacts of current user with backend data
[*ContactsApi*](doc/ContactsApi.md) | [**updateContact**](doc/ContactsApi.md#updatecontact) | **PATCH** /contacts/{contact_id}/ | Update contact data (add/remove contact from favorite)
[*CryptoApi*](doc/CryptoApi.md) | [**getCryptoChartCandles**](doc/CryptoApi.md#getcryptochartcandles) | **GET** /charts/crypto/candle/ | List of candles for crypto price chart
[*CryptoApi*](doc/CryptoApi.md) | [**getCryptoChartLine**](doc/CryptoApi.md#getcryptochartline) | **GET** /charts/crypto/line/ | List line ticks for crypto price chart
[*CryptoApi*](doc/CryptoApi.md) | [**getCryptoOverview**](doc/CryptoApi.md#getcryptooverview) | **GET** /crypto/overview/ | Get crypto overview information, the price of the tokens will be converted into the user&#39;s payment currency
[*CryptoApi*](doc/CryptoApi.md) | [**getGlobalCryptoStats**](doc/CryptoApi.md#getglobalcryptostats) | **GET** /crypto/global/stats/ | Get global crypto market information, 24h volume and market cap will be converted into the user&#39;s payment currency
[*CryptoApi*](doc/CryptoApi.md) | [**getInnerCryptoTransferFee**](doc/CryptoApi.md#getinnercryptotransferfee) | **POST** /crypto/send/fee/ | 
[*CryptoApi*](doc/CryptoApi.md) | [**getTokenDetail**](doc/CryptoApi.md#gettokendetail) | **GET** /crypto/detail/{assetID}/ | Get description for certain token, price related stats will be converted into the user&#39;s payment currency
[*CryptoApi*](doc/CryptoApi.md) | [**getTokenStats**](doc/CryptoApi.md#gettokenstats) | **GET** /crypto/stats/{assetID}/ | Get stats for certain token, price related stats will be converted into the user&#39;s payment currency
[*CryptoApi*](doc/CryptoApi.md) | [**listCryptoCurrencies**](doc/CryptoApi.md#listcryptocurrencies) | **GET** /currencies/crypto/ | List of Crypto Currencies available at Bind
[*CryptoApi*](doc/CryptoApi.md) | [**performInnerCryptoTransfer**](doc/CryptoApi.md#performinnercryptotransfer) | **POST** /crypto/send/ | Send crypto inside BIND
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**addCryptoFavorite**](doc/CryptoWalletApi.md#addcryptofavorite) | **POST** /crypto/favorites/ | Add crypto asset to favorite
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**createWithdrawalAddress**](doc/CryptoWalletApi.md#createwithdrawaladdress) | **POST** /crypto/withdrawal/whitelisted_addresses/ | Create new whitelisted withdrawal address
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**deleteCryptoFavorite**](doc/CryptoWalletApi.md#deletecryptofavorite) | **DELETE** /crypto/favorites/{asset_id}/ | Delete asset from favorites
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**deleteWithdrawalAddress**](doc/CryptoWalletApi.md#deletewithdrawaladdress) | **DELETE** /crypto/withdrawal/whitelisted_addresses/{address_id}/ | Delete withdrawal asset
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**estimateCryptoWithdrawalFee**](doc/CryptoWalletApi.md#estimatecryptowithdrawalfee) | **POST** /crypto/withdrawal/estimate_fee/ | Estimate fee for withdrawal
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**getAssetsBreakdown**](doc/CryptoWalletApi.md#getassetsbreakdown) | **GET** /crypto/breakdown/ | Get crypto asset allocation/breakdown of current User
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**getChainImplementations**](doc/CryptoWalletApi.md#getchainimplementations) | **GET** /crypto/assets/{asset_id}/chain_implementations/ | Get chains for a crypto asset
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**getCryptoFavorites**](doc/CryptoWalletApi.md#getcryptofavorites) | **GET** /crypto/favorites/ | Get user favorite crypto assets
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**getCryptoWallet**](doc/CryptoWalletApi.md#getcryptowallet) | **GET** /crypto/wallet/ | Get crypto wallet of current User - total balance and assets balances
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**getCryptoWalletLight**](doc/CryptoWalletApi.md#getcryptowalletlight) | **GET** /crypto/wallet/light/ | Get crypto assets of current user with balances and prices
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**getDepositAddresses**](doc/CryptoWalletApi.md#getdepositaddresses) | **GET** /crypto/assets/{asset_id}/deposit_addresses/ | Get deposit addresses for a crypto asset
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**getSingleCryptoBalance**](doc/CryptoWalletApi.md#getsinglecryptobalance) | **GET** /crypto/assets/{asset_id}/balance/ | Get detailed balance of a crypto asset
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**getWithdrawalAddresses**](doc/CryptoWalletApi.md#getwithdrawaladdresses) | **GET** /crypto/withdrawal/whitelisted_addresses/ | Get whitelisted addresses for crypto withdrawal
[*CryptoWalletApi*](doc/CryptoWalletApi.md) | [**performWithdrawalOfCrypto**](doc/CryptoWalletApi.md#performwithdrawalofcrypto) | **POST** /crypto/withdrawal/perform/ | Register a withdrawal transaction
[*CurrencyApi*](doc/CurrencyApi.md) | [**getCryptoAsset**](doc/CurrencyApi.md#getcryptoasset) | **GET** /currencies/crypto/{crypto_currency_id} | Crypto currency information with flag favorite or not for user
[*CurrencyApi*](doc/CurrencyApi.md) | [**listCryptoCurrencies**](doc/CurrencyApi.md#listcryptocurrencies) | **GET** /currencies/crypto/ | List of Crypto Currencies available at Bind
[*CurrencyApi*](doc/CurrencyApi.md) | [**listCurrencies**](doc/CurrencyApi.md#listcurrencies) | **GET** /currencies/ | List of Currencies available at Bind
[*ExchangeApi*](doc/ExchangeApi.md) | [**cancelLimitOrder**](doc/ExchangeApi.md#cancellimitorder) | **POST** /crypto/exchange/limit_orders/{order_id}/cancel | Cancel given limit order
[*ExchangeApi*](doc/ExchangeApi.md) | [**estimateCryptoExchange**](doc/ExchangeApi.md#estimatecryptoexchange) | **POST** /crypto/exchange/estimate/ | Estimate exchange of assets. One of assets has to be a cryptocurrency
[*ExchangeApi*](doc/ExchangeApi.md) | [**getCryptoExchangeRate**](doc/ExchangeApi.md#getcryptoexchangerate) | **GET** /crypto/exchange/rate/{from}/{to}/ | Exchange rate between two given assets (at least one of them is crypto)
[*ExchangeApi*](doc/ExchangeApi.md) | [**getExchangeRate**](doc/ExchangeApi.md#getexchangerate) | **GET** /fiat/exchange/rate/{from}/{to}/ | Exchange rate between two given currencies
[*ExchangeApi*](doc/ExchangeApi.md) | [**getFearGreed**](doc/ExchangeApi.md#getfeargreed) | **GET** /crypto/assets/{asset_id}/fear_greed/ | Get fear and greed rates for given asset (results of votes if crypto asset will go up or down)
[*ExchangeApi*](doc/ExchangeApi.md) | [**getLimitOrdersList**](doc/ExchangeApi.md#getlimitorderslist) | **GET** /crypto/exchange/limit_orders | Get list of limit orders for current user
[*ExchangeApi*](doc/ExchangeApi.md) | [**performCryptoExchange**](doc/ExchangeApi.md#performcryptoexchange) | **POST** /crypto/exchange/ | Perform exchange of assets. One of assets has to be a cryptocurrency
[*ExchangeApi*](doc/ExchangeApi.md) | [**performExchange**](doc/ExchangeApi.md#performexchange) | **POST** /fiat/exchange/ | Perform exchange operation
[*ExchangeApi*](doc/ExchangeApi.md) | [**putLimitOrder**](doc/ExchangeApi.md#putlimitorder) | **POST** /crypto/exchange/limit_orders | Put limit order to the system. Order will be executed later
[*ExchangeApi*](doc/ExchangeApi.md) | [**voteFearGreed**](doc/ExchangeApi.md#votefeargreed) | **PATCH** /crypto/assets/{asset_id}/fear_greed/ | Vote if this crypto asset goes up or down today
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**blockBankCard**](doc/FiatWalletApi.md#blockbankcard) | **POST** /fiat/bankcards/{card_id}/block/ | Block bank card and write reason
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**changeDefaultWallet**](doc/FiatWalletApi.md#changedefaultwallet) | **POST** /fiat/bankcards/{card_id}/change_wallet/ | Change wallet attached to bank card
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**createFiatWallet**](doc/FiatWalletApi.md#createfiatwallet) | **POST** /fiat/wallets/ | Create an wallet in given currency
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**getBankCard**](doc/FiatWalletApi.md#getbankcard) | **GET** /fiat/bankcards/{card_id}/ | Get one exact Bank Card
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**getBankCardAnalytics**](doc/FiatWalletApi.md#getbankcardanalytics) | **GET** /fiat/bankcards/{card_id}/analytics/ | Get analytics for Bank Card
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**getBankCardsList**](doc/FiatWalletApi.md#getbankcardslist) | **GET** /fiat/bankcards/ | Get a list of Bank Cards issued for current User
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**getFiatAccount**](doc/FiatWalletApi.md#getfiataccount) | **GET** /fiat/account/ | All fiat wallets of current user with total balance data
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**getFiatCurrencies**](doc/FiatWalletApi.md#getfiatcurrencies) | **GET** /fiat/currencies/ | List of currencies that are available for fiat account opening
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**getFiatCurrenciesWithRates**](doc/FiatWalletApi.md#getfiatcurrencieswithrates) | **GET** /fiat/currencies/rate/ | List of currencies that are available for fiat account opening with rates for given currency
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**getFiatWalletDetails**](doc/FiatWalletApi.md#getfiatwalletdetails) | **GET** /fiat/wallets/{wallet_id}/ | Wallet&#39;s details
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**getFiatWallets**](doc/FiatWalletApi.md#getfiatwallets) | **GET** /fiat/wallets/ | All fiat wallets of current user
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**getFiatWalletsWithUserPaymentCurrency**](doc/FiatWalletApi.md#getfiatwalletswithuserpaymentcurrency) | **GET** /fiat/wallets/detailed/ | All fiat wallets of current user with user payment currency info
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**lockBankCard**](doc/FiatWalletApi.md#lockbankcard) | **POST** /fiat/bankcards/{card_id}/lock/ | Lock or unlock a bank card
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**reissueBankCard**](doc/FiatWalletApi.md#reissuebankcard) | **POST** /fiat/bankcards/{card_id}/reissue/ | Reissue bank card and return new bank card
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**shareDefaultFiatWallet**](doc/FiatWalletApi.md#sharedefaultfiatwallet) | **GET** /fiat/wallets/share/ | Get share information for user default wallet
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**shareFiatWallet**](doc/FiatWalletApi.md#sharefiatwallet) | **GET** /fiat/wallets/{wallet_id}/share/ | Share specified wallet details
[*FiatWalletApi*](doc/FiatWalletApi.md) | [**updateBankCardSettings**](doc/FiatWalletApi.md#updatebankcardsettings) | **PATCH** /fiat/bankcards/{card_id}/ | Update settings of a Bank Card
[*GeoApi*](doc/GeoApi.md) | [**listCountries**](doc/GeoApi.md#listcountries) | **GET** /countries/ | Countries list
[*StagingApi*](doc/StagingApi.md) | [**adjustFiatWalletBalance**](doc/StagingApi.md#adjustfiatwalletbalance) | **POST** /staging/fiat/wallet/adjust/ | Change balance of a fiat wallet
[*StagingApi*](doc/StagingApi.md) | [**fillCryptoWallet**](doc/StagingApi.md#fillcryptowallet) | **POST** /staging/crypto/wallet/fill/ | Put some testnet assets in a crypto wallet of a current user
[*StagingApi*](doc/StagingApi.md) | [**fireblocksPoolBalances**](doc/StagingApi.md#fireblockspoolbalances) | **GET** /staging/fireblocks_pool/balances/ | Get pool balances
[*StakingApi*](doc/StakingApi.md) | [**getAdditionalStaking**](doc/StakingApi.md#getadditionalstaking) | **GET** /crypto/staking/additional_info | Get info of additional staking
[*StakingApi*](doc/StakingApi.md) | [**getStaking**](doc/StakingApi.md#getstaking) | **GET** /crypto/staking | Get info of staking
[*StakingApi*](doc/StakingApi.md) | [**getStakingBalance**](doc/StakingApi.md#getstakingbalance) | **GET** /crypto/staking/balance | Get staking balance
[*StakingApi*](doc/StakingApi.md) | [**getStakingPeriods**](doc/StakingApi.md#getstakingperiods) | **GET** /crypto/staking/periods | Get staking periods
[*StakingApi*](doc/StakingApi.md) | [**getStakingReleases**](doc/StakingApi.md#getstakingreleases) | **GET** /crypto/staking/releases | Get staking releases
[*StakingApi*](doc/StakingApi.md) | [**getStakingTimer**](doc/StakingApi.md#getstakingtimer) | **GET** /crypto/staking/timer | Get datetime of end timer
[*StakingApi*](doc/StakingApi.md) | [**stakingEstimateOperation**](doc/StakingApi.md#stakingestimateoperation) | **POST** /crypto/staking/estimate | Estimate staking operation
[*StakingApi*](doc/StakingApi.md) | [**stakingPerform**](doc/StakingApi.md#stakingperform) | **POST** /crypto/staking/perform | Perform staking
[*TransactionsApi*](doc/TransactionsApi.md) | [**exportTransactions**](doc/TransactionsApi.md#exporttransactions) | **POST** /transactions/export/ | Export user transaction to csv
[*TransactionsApi*](doc/TransactionsApi.md) | [**getExportHistory**](doc/TransactionsApi.md#getexporthistory) | **GET** /transactions/export/history/ | Get export history
[*TransactionsApi*](doc/TransactionsApi.md) | [**getTransactionDetails**](doc/TransactionsApi.md#gettransactiondetails) | **GET** /transactions/{transactionId} | Get list of user transactions
[*TransactionsApi*](doc/TransactionsApi.md) | [**getTransactionsAssetsList**](doc/TransactionsApi.md#gettransactionsassetslist) | **POST** /transactions/assets/ | Get list of assets of user transactions
[*TransactionsApi*](doc/TransactionsApi.md) | [**getTransactionsFiltered**](doc/TransactionsApi.md#gettransactionsfiltered) | **POST** /transactions/ | Get list of user transactions
[*UserApi*](doc/UserApi.md) | [**checkKYCRequestApproval**](doc/UserApi.md#checkkycrequestapproval) | **GET** /users/kyc/requests/approval/ | Get status of KYC Request approval
[*UserApi*](doc/UserApi.md) | [**checkKYCStatus**](doc/UserApi.md#checkkycstatus) | **POST** /user/kyc/check/ | Send KYC to check
[*UserApi*](doc/UserApi.md) | [**checkPasscode**](doc/UserApi.md#checkpasscode) | **POST** /users/check/passcode/ | Check validity of user passcode
[*UserApi*](doc/UserApi.md) | [**createKYCRequest**](doc/UserApi.md#createkycrequest) | **POST** /user/kyc/requests/ | Create KYC Request
[*UserApi*](doc/UserApi.md) | [**getKYCDocumentUID**](doc/UserApi.md#getkycdocumentuid) | **GET** /user/kyc/document_uid/ | Get KYC Document UID
[*UserApi*](doc/UserApi.md) | [**getUserPaymentCurrency**](doc/UserApi.md#getuserpaymentcurrency) | **GET** /users/payment_currency/ | Get user payment currency
[*UserApi*](doc/UserApi.md) | [**moveKYCRequest**](doc/UserApi.md#movekycrequest) | **POST** /users/kyc/requests/approval/ | Move KYCRequest to approval
[*UserApi*](doc/UserApi.md) | [**qRCodeGenerateCustomString**](doc/UserApi.md#qrcodegeneratecustomstring) | **POST** /users/generate/custom_qr_code/ | Generate QR code with custom string
[*UserApi*](doc/UserApi.md) | [**updateUser**](doc/UserApi.md#updateuser) | **PATCH** /users/{userID}/ | Update user
[*UserApi*](doc/UserApi.md) | [**updateUserPasscode**](doc/UserApi.md#updateuserpasscode) | **PATCH** /users/change_passcode/{userID}/ | Update user passcode
[*WalletApi*](doc/WalletApi.md) | [**getMainWallet**](doc/WalletApi.md#getmainwallet) | **GET** /wallet/ | Total balance and info about Users wallets in crypto, fiat and nft


## Documentation For Models

 - [AddContactByUserRequest](doc/AddContactByUserRequest.md)
 - [AdjustFiatWalletBalanceRequest](doc/AdjustFiatWalletBalanceRequest.md)
 - [BankCardAnalytics](doc/BankCardAnalytics.md)
 - [BankCardBaseData](doc/BankCardBaseData.md)
 - [BankCardBlockingReason](doc/BankCardBlockingReason.md)
 - [BankCardChangeWalletRequest](doc/BankCardChangeWalletRequest.md)
 - [BankCardDetail](doc/BankCardDetail.md)
 - [BankCardDetailAllOf](doc/BankCardDetailAllOf.md)
 - [BankCardLockRequest](doc/BankCardLockRequest.md)
 - [BankCardSettings](doc/BankCardSettings.md)
 - [BankCardStatus](doc/BankCardStatus.md)
 - [Beneficiary](doc/Beneficiary.md)
 - [BeneficiaryDetail](doc/BeneficiaryDetail.md)
 - [CancelLimitOrderRequest](doc/CancelLimitOrderRequest.md)
 - [Candle](doc/Candle.md)
 - [ChainImplementation](doc/ChainImplementation.md)
 - [ChartTick](doc/ChartTick.md)
 - [CheckKYCStatusRequest](doc/CheckKYCStatusRequest.md)
 - [Contact](doc/Contact.md)
 - [Country](doc/Country.md)
 - [CreateBeneficiaryRequest](doc/CreateBeneficiaryRequest.md)
 - [CreateFiatWalletRequest](doc/CreateFiatWalletRequest.md)
 - [CreateInnerFiatRequestRequest](doc/CreateInnerFiatRequestRequest.md)
 - [CreateInnerFiatTransferRequest](doc/CreateInnerFiatTransferRequest.md)
 - [CryptoAccount](doc/CryptoAccount.md)
 - [CryptoAccountAllOf](doc/CryptoAccountAllOf.md)
 - [CryptoAccountLight](doc/CryptoAccountLight.md)
 - [CryptoAccountWithShare](doc/CryptoAccountWithShare.md)
 - [CryptoAccountWithShareAllOf](doc/CryptoAccountWithShareAllOf.md)
 - [CryptoAsset](doc/CryptoAsset.md)
 - [CryptoAssetFavorite](doc/CryptoAssetFavorite.md)
 - [CryptoAssetFavoriteAllOf](doc/CryptoAssetFavoriteAllOf.md)
 - [CryptoAssetSorting](doc/CryptoAssetSorting.md)
 - [CryptoExchangeEstimationResult](doc/CryptoExchangeEstimationResult.md)
 - [CryptoExchangeRequest](doc/CryptoExchangeRequest.md)
 - [CryptoMarketStats](doc/CryptoMarketStats.md)
 - [CryptoOverviewElement](doc/CryptoOverviewElement.md)
 - [CryptoWallet](doc/CryptoWallet.md)
 - [CryptoWalletAllOf](doc/CryptoWalletAllOf.md)
 - [CryptoWalletBalance](doc/CryptoWalletBalance.md)
 - [CryptoWalletWithShare](doc/CryptoWalletWithShare.md)
 - [CryptoWalletWithShareAllOf](doc/CryptoWalletWithShareAllOf.md)
 - [CryptoWithdrawalFeeEstimationRequest](doc/CryptoWithdrawalFeeEstimationRequest.md)
 - [CryptoWithdrawalFeeEstimationResult](doc/CryptoWithdrawalFeeEstimationResult.md)
 - [CryptoWithdrawalRequest](doc/CryptoWithdrawalRequest.md)
 - [Currency](doc/Currency.md)
 - [CurrencyWithRate](doc/CurrencyWithRate.md)
 - [CurrencyWithRateAllOf](doc/CurrencyWithRateAllOf.md)
 - [DepositAddress](doc/DepositAddress.md)
 - [Error](doc/Error.md)
 - [ExportHistory](doc/ExportHistory.md)
 - [FavoriteCryptoCreateRequest](doc/FavoriteCryptoCreateRequest.md)
 - [FearGreed](doc/FearGreed.md)
 - [FiatAccount](doc/FiatAccount.md)
 - [FiatTransferEstimate](doc/FiatTransferEstimate.md)
 - [FiatWallet](doc/FiatWallet.md)
 - [FiatWalletAllOf](doc/FiatWalletAllOf.md)
 - [FiatWalletLight](doc/FiatWalletLight.md)
 - [FiatWalletRequisites](doc/FiatWalletRequisites.md)
 - [FiatWalletTotalBalance](doc/FiatWalletTotalBalance.md)
 - [FiatWalletWithPaymentCurrency](doc/FiatWalletWithPaymentCurrency.md)
 - [FiatWalletWithPaymentCurrencyAllOf](doc/FiatWalletWithPaymentCurrencyAllOf.md)
 - [GetInnerCryptoTransferFeeRequest](doc/GetInnerCryptoTransferFeeRequest.md)
 - [GetInnerFiatTransferFeeRequest](doc/GetInnerFiatTransferFeeRequest.md)
 - [GetKYCDocumentUID200Response](doc/GetKYCDocumentUID200Response.md)
 - [GetStakingTimer200Response](doc/GetStakingTimer200Response.md)
 - [InnerCryptoTransferFeeResult](doc/InnerCryptoTransferFeeResult.md)
 - [InnerFiatTransferFeeResult](doc/InnerFiatTransferFeeResult.md)
 - [JWTToken](doc/JWTToken.md)
 - [KYCFieldStatus](doc/KYCFieldStatus.md)
 - [KYCRequestMoveResult](doc/KYCRequestMoveResult.md)
 - [KYCRequestMoveResultRequestFieldsStatus](doc/KYCRequestMoveResultRequestFieldsStatus.md)
 - [KYCRequestStatus](doc/KYCRequestStatus.md)
 - [LimitOrder](doc/LimitOrder.md)
 - [MainWalletItem](doc/MainWalletItem.md)
 - [MainWalletType](doc/MainWalletType.md)
 - [PerformExchangeRequest](doc/PerformExchangeRequest.md)
 - [PerformFiatTransferRequest](doc/PerformFiatTransferRequest.md)
 - [PeriodInterval](doc/PeriodInterval.md)
 - [PutLimitOrderRequest](doc/PutLimitOrderRequest.md)
 - [QRCodeGenerateCustomStringRequest](doc/QRCodeGenerateCustomStringRequest.md)
 - [SingleCryptoBalance](doc/SingleCryptoBalance.md)
 - [Staking](doc/Staking.md)
 - [StakingAdditionalInformation](doc/StakingAdditionalInformation.md)
 - [StakingBalance](doc/StakingBalance.md)
 - [StakingEstimate](doc/StakingEstimate.md)
 - [StakingInformation](doc/StakingInformation.md)
 - [StakingPerformRequest](doc/StakingPerformRequest.md)
 - [StakingPeriods](doc/StakingPeriods.md)
 - [StakingReleases](doc/StakingReleases.md)
 - [SyncContactsRequest](doc/SyncContactsRequest.md)
 - [TokenDetail](doc/TokenDetail.md)
 - [TokenStats](doc/TokenStats.md)
 - [Transaction](doc/Transaction.md)
 - [TransactionAssetsFilter](doc/TransactionAssetsFilter.md)
 - [TransactionDescriptionFillingRuleSet](doc/TransactionDescriptionFillingRuleSet.md)
 - [TransactionExportFilter](doc/TransactionExportFilter.md)
 - [TransactionFilter](doc/TransactionFilter.md)
 - [TransactionGroup](doc/TransactionGroup.md)
 - [TransactionGrouping](doc/TransactionGrouping.md)
 - [TransactionStates](doc/TransactionStates.md)
 - [TransactionTypes](doc/TransactionTypes.md)
 - [UpdateBeneficiaryRequest](doc/UpdateBeneficiaryRequest.md)
 - [UpdateContactRequest](doc/UpdateContactRequest.md)
 - [UpdateUserPasscodeRequest](doc/UpdateUserPasscodeRequest.md)
 - [User](doc/User.md)
 - [UserPaymentCurrency](doc/UserPaymentCurrency.md)
 - [UserSharingData](doc/UserSharingData.md)
 - [VoteFearGreedRequest](doc/VoteFearGreedRequest.md)
 - [WalletBalanceInfo](doc/WalletBalanceInfo.md)
 - [WithdrawalAddress](doc/WithdrawalAddress.md)
 - [WithdrawalAddressCreationRequest](doc/WithdrawalAddressCreationRequest.md)


## Documentation For Authorization


## bearerAuth

- **Type**: HTTP basic authentication


## Author

support@bind.com

