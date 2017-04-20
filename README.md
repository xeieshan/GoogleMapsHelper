# GoogleMapsHelper

A GOOGLE MAPS Helper that help you do multiple tasks like

## 1- Geocode
It returns all these items : (MOGoogleGeocodeList *googleGeoCodeList, SPGoogleGeoCoderResponse responseCode, NSString *message) 

I Geocode @"Arsenal Emirates" and I got
Printing description of googleGeoCodeList->_results->[0]:
{
    "formatted_address" = "Hornsey Rd, London N7 7AJ, UK";
    geometry =     {
        bounds =         {
        };
        location =         {
            lat = "51.5548885";
            lng = "-0.108438";
        };
        "location_type" = APPROXIMATE;
        viewport =         {
            northeast =             {
                lat = "51.55623748029149";
                lng = "-0.107089019708498";
            };
            southwest =             {
                lat = "51.5535395197085";
                lng = "-0.109786980291502";
            };
        };
    };
    kMOGoogleGeocodePlacemarksAddressComponents =     (
                {
            kMOAddressComponentsTypes =             (
                route
            );
            "long_name" = "Hornsey Road";
            "short_name" = "Hornsey Rd";
        },
                {
            kMOAddressComponentsTypes =             (
                "postal_town"
            );
            "long_name" = London;
            "short_name" = London;
        },
                {
            kMOAddressComponentsTypes =             (
                "administrative_area_level_2",
                political
            );
            "long_name" = "Greater London";
            "short_name" = "Greater London";
        },
                {
            kMOAddressComponentsTypes =             (
                "administrative_area_level_1",
                political
            );
            "long_name" = England;
            "short_name" = England;
        },
                {
            kMOAddressComponentsTypes =             (
                country,
                political
            );
            "long_name" = "United Kingdom";
            "short_name" = GB;
        },
                {
            kMOAddressComponentsTypes =             (
                "postal_code"
            );
            "long_name" = "N7 7AJ";
            "short_name" = "N7 7AJ";
        }
    );
    kMOGoogleGeocodePlacemarksTypes =     (
        establishment,
        "point_of_interest",
        stadium
    );
    "place_id" = "ChIJO14pRXYbdkgRkM-CgzxxADY";
}


## 2- Reverse Geocode
It returns all these items : (MOGoogleGeocodeList *googleGeoCodeList, SPGoogleGeoCoderResponse responseCode, NSString *message)
Printing description for first item : 
<__NSArrayI 0x6080000b1b20>(
{
    "formatted_address" = "Emirates Stadium, London, UK";
    geometry =     {
        bounds =         {
            northeast =             {
                lat = "51.5561569";
                lng = "-0.1069905";
            };
            southwest =             {
                lat = "51.5539356";
                lng = "-0.1098853";
            };
        };
        location =         {
            lat = "51.55572979999999";
            lng = "-0.1083118";
        };
        "location_type" = ROOFTOP;
        viewport =         {
            northeast =             {
                lat = "51.5563952302915";
                lng = "-0.1069905";
            };
            southwest =             {
                lat = "51.5536972697085";
                lng = "-0.1098853";
            };
        };
    };
    kMOGoogleGeocodePlacemarksAddressComponents =     (
                {
            kMOAddressComponentsTypes =             (
                premise
            );
            "long_name" = "Emirates Stadium";
            "short_name" = "Emirates Stadium";
        },
                {
            kMOAddressComponentsTypes =             (
                locality,
                political
            );
            "long_name" = London;
            "short_name" = London;
        },
                {
            kMOAddressComponentsTypes =             (
                "postal_town"
            );
            "long_name" = London;
            "short_name" = London;
        },
                {
            kMOAddressComponentsTypes =             (
                "administrative_area_level_2",
                political
            );
            "long_name" = "Greater London";
            "short_name" = "Greater London";
        },
                {
            kMOAddressComponentsTypes =             (
                "administrative_area_level_1",
                political
            );
            "long_name" = England;
            "short_name" = England;
        },
                {
            kMOAddressComponentsTypes =             (
                country,
                political
            );
            "long_name" = "United Kingdom";
            "short_name" = GB;
        }
    );
    kMOGoogleGeocodePlacemarksTypes =     (
        premise
    );
    "place_id" = ChIJuaX4rXcbdkgRX7nJ4iCVzT0;
}}
)


## 3- Autocomplete
It Returns all of these items : (MOGoogleAutoCompleteList *googleAutocompleteList, SPGoogleGeoCoderResponse responseCode, NSString *message)
I wanted to search @"Arsenal Emirates Stadium, london"  and I got following 2 results, I am showing first item
Printing description of ((MOPredictions *)0x0000600000282b70):
{
    description = "Arsenal Football Club, Emirates Stadium, Hornsey Road, London, United Kingdom";
    id = 695fdbc199ef136a3674dc5c3946d0901be24cf2;
    kMOPredictionsMatchedSubstrings =     (
                {
            length = 7;
            offset = 0;
        },
                {
            length = 16;
            offset = 23;
        },
                {
            length = 6;
            offset = 55;
        }
    );
    kMOPredictionsTerms =     (
                {
            offset = 0;
            value = "Arsenal Football Club";
        },
                {
            offset = 23;
            value = "Emirates Stadium";
        },
                {
            offset = 41;
            value = "Hornsey Road";
        },
                {
            offset = 55;
            value = London;
        },
                {
            offset = 63;
            value = "United Kingdom";
        }
    );
    kMOPredictionsTypes =     (
        establishment
    );
    "place_id" = ChIJq3Y4mXYbdkgRinA5RgGR5tA;
    reference = "CmRcAAAA3_03PcjmlvYYAMB56q1NSPHAa6o4s5OZlZzmqKWVzl6m8wQu8kIAHqSFzY8M_fJC6tbdt5vQSOylmlp6vu8hMJ0areyjFCiETtOb2e1qkM9a8TbnHRoIGK83-h0iy9EaEhCgUDC5ODRWWeKhZZmXh3wHGhRRAUwm4UFKR6a689AJXsADrqKFNA";
}

## 4- Directions 
It Returns All these Items : (MKPolyline *polyLine, NSString *distance, NSString *duration, NSString *startAddress, NSString *endAddress, NSMutableArray *polyLineSetArray, NSMutableArray *directionsSetArray, NSMutableArray *distanceSetArray) in a block.
I found directions between following CLLocationCoordinate2D's
CLLocationCoordinate2D emiratesStadium = { 51.555747, -0.108309};
CLLocationCoordinate2D stamfordBridge = { 51.481690, -0.190999 };

### Printing description of duration:
42 mins
### Printing description of distance:
16.6 km
### Printing description of startAddress:
Citizen Rd, London N7, UK
### Printing description of endAddress:
19 Billing Pl, London SW10 9UN, UK
### Plus Polyline object to be used in MKMapView
It also tells you Guidance strings which you can use :
Head southwest on Citizen Rd toward Hornsey Rd/A103,
Turn right onto Hornsey Rd/A103,
Turn left onto Tollington Rd/A503Continue to follow A503,
Continue straight onto Camden Rd/A503,
Turn left onto Camden St/A400Continue to follow A400,
Turn left onto Hampstead Rd/A400Continue to follow A400,
Turn right onto Euston Rd,
Merge onto Euston Rd/A501 via the ramp to Ring Road/A41/A40/KilburnContinue to follow A501,
Keep right to continue on Marylebone Flyover/A40Continue to follow A40,
Take the A3220 ramp to Hammersmith/Shepherd's Bush/White City/Earls Court,
At the roundabout, take the 1st exit onto W Cross Rte/A3220,
At the roundabout, take the 2nd exit onto Holland Rd/A3220Continue to follow A3220,
Keep right to continue on Warwick Gardens/A3220,
Turn left onto Pembroke Rd/A3220Continue to follow A3220,
Continue straight onto Earls Ct Rd/A3220Continue to follow A3220,
Turn right onto Fulham Rd/A308Continue to follow Fulham Rd,
Turn right,
Turn right,
Turn left
Destination will be on the left

# Make sure you integrate AFNetworking, SVProgressHUD, SVHTTPClient
I was using CocoaPods so I used
pod 'SVHTTPRequest', '~> 0.5'
pod 'AFNetworking', '~> 3.0'
pod 'SVProgressHUD'
