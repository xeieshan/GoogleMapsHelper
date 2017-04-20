//
//  ViewController.m
//  <#Project Name#>
//
//  Created by <#Project Developer#> on 20/04/2017.
//  Copyright © 2017 <#Project Team#>. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //    using AFNetworking
    
    [[AFGoogleMapsHelper sharedAFGoogleMapsHelper] geocodeAddressString:@"Arsenal Emirates" components:@{} completionHandler:^(MOGoogleGeocodeList *googleGeoCodeList, SPGoogleGeoCoderResponse responseCode, NSString *message) {
        
    }];
    
//
    CLLocationCoordinate2D emiratesStadium = { 51.555747, -0.108309};
    CLLocationCoordinate2D stamfordBridge = { 51.481690, -0.190999 };
//
    [[AFGoogleMapsHelper sharedAFGoogleMapsHelper] reverseGeocodeCoordinate:(emiratesStadium) resultTypes:@[] locationTypes:@[] completionHandler:^(MOGoogleGeocodeList *googleGeoCodeList, SPGoogleGeoCoderResponse responseCode, NSString *message) {
        
    }];
    
    [[AFGoogleMapsHelper sharedAFGoogleMapsHelper] getAutoCompleteFromGoogle:@"Arsenal Emirates Stadium, london" andAutoComplete:^(MOGoogleAutoCompleteList *googleAutocompleteList, SPGoogleGeoCoderResponse responseCode, NSString *message) {
        
    }];
    
    [[AFGoogleMapsHelper sharedAFGoogleMapsHelper] getDirections:emiratesStadium andCoordinateDestination:stamfordBridge andDrawPoints:^{
        
    } andPlaceMarks:^(MKPolyline *polyLine, NSString *distance, NSString *duration, NSString *startAddress, NSString *endAddress, NSMutableArray *polyLineSetArray, NSMutableArray *directionsSetArray, NSMutableArray *distanceSetArray) {
        
    }];
    
    // Using SVHTTPClient
    
    [[SVGoogleMapsHelper sharedGoogleMapHelper] geocodeAddressString:@"Arsenal Emirates" components:@{} completionHandler:^(MOGoogleGeocodeList *googleGeoCodeList, SPGoogleGeoCoderResponse responseCode, NSString *message) {
        
    }];
    

    [[SVGoogleMapsHelper sharedGoogleMapHelper] reverseGeocodeCoordinate:(emiratesStadium) resultTypes:@[] locationTypes:@[] completionHandler:^(MOGoogleGeocodeList *googleGeoCodeList, SPGoogleGeoCoderResponse responseCode, NSString *message) {
        
    }];
    
    [[SVGoogleMapsHelper sharedGoogleMapHelper] getAutoCompleteFromGoogle:@"Arsenal Emirates Stadium, london" andAutoComplete:^(MOGoogleAutoCompleteList *googleAutocompleteList, SPGoogleGeoCoderResponse responseCode, NSString *message) {
        
    }];
    
    [[SVGoogleMapsHelper sharedGoogleMapHelper] getDirections:emiratesStadium andCoordinateDestination:stamfordBridge andDrawPoints:^{
        
    } andPlaceMarks:^(MKPolyline *polyLine, NSString *distance, NSString *duration, NSString *startAddress, NSString *endAddress, NSMutableArray *polyLineSetArray, NSMutableArray *directionsSetArray, NSMutableArray *distanceSetArray) {
        
    }];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
