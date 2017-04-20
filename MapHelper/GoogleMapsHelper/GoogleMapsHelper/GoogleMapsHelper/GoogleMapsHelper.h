typedef NS_ENUM(NSUInteger, SPGoogleGeoCoderResponse) {
    SPGoogleGeoCoderResponseErrorOverQueryLimit, // indicates that you are over your quota.
    SPGoogleGeoCoderResponseErrorRequestDenied,  // indicates that your request was denied, generally because of lack of a sensor parameter.
    SPGoogleGeoCoderResponseErrorInvalidRequest, // generally indicates that the query (address or latlng) is missing.
    SPGoogleGeoCoderResponseErrorUnknownError,    // indicates that the request could not be processed due to a server error. The request may succeed if you try again.
    SPGoogleGeoCoderResponseOK,
    SPGoogleGeoCoderResponseOKZeroResults,
    SPGoogleGeoCoderResponseUnknownError
};

#import "SVProgressHUD.h"
#import "MOGoogleGeocodeList.h"
#import "MOGoogleAutoCompleteList.h"
#import <SVProgressHUD/SVProgressHUD.h>
#import <MapKit/MapKit.h>
#import <SVHTTPRequest/SVHTTPClient.h>
#import "NSDictionary+Utilities.h"
#import "NSString+Utilities.h"