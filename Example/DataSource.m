//
//  DataSource.m
//  ImplicitSignednessKit
//
//  Created by Giovanni on 9/05/2015.
//
//

#import "DataSource.h"

@interface DataSource ()

@property (nonatomic, strong) NSArray *sections;

@end

@implementation DataSource

- (instancetype)init
{
    self = [super init];
    if (!self) return nil;

    self.sections = @[
                      @[
                          @{ @"text": @"Lorem" },
                          @{ @"text": @"ipsum" },
                          ],
                      @[
                          @{ @"text": @"My" },
                          @{ @"text": @"name" },
                          @{ @"text": @"is" },
                          @{ @"text": @"Ishmael" },
                          ]
                      ];

    return self;
}
#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSUInteger sectionAsIndex = (NSUInteger)section;
    return [self.sections[sectionAsIndex] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSDictionary *data = self.sections[indexPath.section][indexPath.row];
    cell.textLabel.text = data[@"text"];
    return cell;
}
@end
