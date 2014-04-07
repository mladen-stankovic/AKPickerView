//
//  AKViewController.m
//  AKPickerViewSample
//
//  Created by Akio Yasui on 3/29/14.
//  Copyright (c) 2014 Akio Yasui. All rights reserved.
//

#import "AKViewController.h"

#import "AKPickerView.h"

@interface AKViewController () <AKPickerViewDelegate>
@property (nonatomic, strong) AKPickerView *pickerView;
@property (nonatomic, strong) NSArray *titles;
@end

@implementation AKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	self.pickerView = [[AKPickerView alloc] initWithFrame:self.view.bounds];
	self.pickerView.delegate = self;
	[self.view addSubview:self.pickerView];

	self.titles = @[@"Tokyo",
					@"Kanagawa",
					@"Osaka",
					@"Aichi",
					@"Saitama",
					@"Chiba",
					@"Hyogo",
					@"Hokkaido",
					@"Fukuoka",
					@"Shizuoka"];

	self.pickerView.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:20];
	self.pickerView.textColor = [UIColor grayColor];
	self.pickerView.highlightedTextColor = [UIColor blackColor];
	[self.pickerView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSUInteger)numberOfItemsInPickerView:(AKPickerView *)pickerView
{
	return [self.titles count];
}

- (NSString *)pickerView:(AKPickerView *)pickerView titleForItem:(NSInteger)item
{
	return self.titles[item];
}

@end
