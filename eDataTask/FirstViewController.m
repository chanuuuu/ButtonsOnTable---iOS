//
//  FirstViewController.m
//  eDataTask
//
//  Created by Chanikya on 3/06/2015.
//  Copyright (c) 2015 Chanikya Mandapathi. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end



@implementation FirstViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    places = [NSArray arrayWithObjects: @"San Franscisco", @"San Jose", @"New York", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return places.count;
}

- (IBAction)showLocation:(id)sender {
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [places objectAtIndex:indexPath.row];
    
//    UIButton *annotationButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    annotationButton.frame = CGRectMake(40,20,30,30);
//    [annotationButton addTarget:self action:@selector(displayAnnotation) forControlEvents:UIControlEventTouchUpInside];
//    [annotationButton setTitle:@"Show on Map" forState:UIControlStateNormal];
    
    
    cell.showLocation.tag = indexPath.row;
    [cell.locationButton addTarget:self action:@selector(displayAnnotation) forControlEvents:UIControlEventTouchUpInside];
    
    //[cell addSubview:annotationButton];
    
    //[self.tableView cellForRowAtIndexPath:indexPath].accessoryView = annotationButton;
    //[[self.tableView cellForRowAtIndexPath:indexPath].accessoryView setNeedsDisplay];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
}

- (void) displayAnnotation
{
    
}

@end
