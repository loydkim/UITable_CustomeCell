//
//  ViewController.m
//  UITable_CustomeCell
//
//  Created by YOUNGSIC KIM on 2017-05-13.
//  Copyright © 2017 YOUNGSIC KIM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"CustomCell";
    
    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell == nil) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.Label_subject.text = [NSString stringWithFormat:@"This is title label %i",indexPath.row+1];
    cell.Label_subtitle.text = [NSString stringWithFormat:@"I made a table with customecell right now!! the cell row number is %i",indexPath.row+1];
    cell.ImageView_thumbnail.image = [UIImage imageNamed:[NSString stringWithFormat:@"thumb_%i.png",indexPath.row+1]];
    
    return cell;
}

@end
