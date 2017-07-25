package Line;

import java.awt.Color;
import java.awt.Font;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.StandardChartTheme;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;

public class flame {
	public static void main(String[] args) {
		StandardChartTheme mChartTheme = new StandardChartTheme("CN");
		mChartTheme.setLargeFont(new Font("黑体", Font.BOLD, 20));
		mChartTheme.setExtraLargeFont(new Font("宋体", Font.PLAIN, 15));
		mChartTheme.setRegularFont(new Font("宋体", Font.PLAIN, 15));
		ChartFactory.setChartTheme(mChartTheme);
		
		CategoryDataset mDataset = GetDataset();
		
		JFreeChart mChart = ChartFactory.createLineChart(
				"2016工程实践采集火焰数据",
				"采集时间",
				"火焰",
				mDataset,
				PlotOrientation.VERTICAL,//vertical
				true, 
				true, 
				false);
		
		CategoryPlot mPlot = (CategoryPlot)mChart.getPlot();
		mPlot.setBackgroundPaint(Color.LIGHT_GRAY);
		mPlot.setRangeGridlinePaint(Color.BLUE);//背景底部横虚线
		mPlot.setOutlinePaint(Color.RED);//边界线
		
		ChartFrame mChartFrame = new ChartFrame("XZQ", mChart);
		mChartFrame.pack();
		mChartFrame.setVisible(true);

	}
	public static CategoryDataset GetDataset()
	{
		DefaultCategoryDataset mDataset = new DefaultCategoryDataset();
		mDataset.addValue(124.4, "A区域", "05:52:33");
		mDataset.addValue(267, "A区域", "18:13:54");
		mDataset.addValue(120, "A区域", "18:10:56");
		mDataset.addValue(200, "A区域", "19:14:06");
		mDataset.addValue(150, "A区域", "19:12:45");
		mDataset.addValue(188, "A区域", "19:15:07");
		
		mDataset.addValue(126.5, "B区域", "05:52:33");
		mDataset.addValue(100, "B区域", "18:13:54");
		mDataset.addValue(201, "B区域", "18:10:56");
		mDataset.addValue(189.1,"B区域", "19:14:06");
		mDataset.addValue(178,  "B区域", "19:12:45");
		mDataset.addValue(150,  "B区域", "19:15:07");
		return mDataset;
	}


}