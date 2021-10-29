.class public Lcom/android/systemui/qs/tiles/DataUsageDetailView;
.super Landroid/widget/LinearLayout;
.source "DataUsageDetailView.java"


# instance fields
.field private final FORMAT:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "#.##"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method private formatBytes(J)Ljava/lang/String;
    .locals 6

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4199000000000000L    # 1.048576E8

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    const-string v2, "GB"

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x40f9000000000000L    # 102400.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    const-string v2, "MB"

    goto :goto_0

    :cond_1
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    const-string v2, "KB"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    const-wide/16 v4, 0x0

    cmp-long p1, p1, v4

    if-gez p1, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    int-to-double p1, p1

    mul-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v5, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v7, v3, v5

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ltz v7, :cond_2

    iget-wide v13, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v7, v13, v9

    if-gtz v7, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v5, v3, v13

    if-gtz v5, :cond_1

    sget v5, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_remaining_data:I

    sub-long/2addr v13, v3

    sget v6, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_used:I

    new-array v7, v11, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v12

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_limit:I

    new-array v6, v11, [Ljava/lang/Object;

    iget-wide v8, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-direct {v0, v8, v9}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v12

    invoke-virtual {v2, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    move-object v2, v3

    move-wide v3, v13

    goto :goto_1

    :cond_1
    sget v5, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_over_limit:I

    sub-long v6, v3, v13

    sget v8, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_used:I

    new-array v9, v11, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v12

    invoke-virtual {v2, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_limit:I

    new-array v8, v11, [Ljava/lang/Object;

    iget-wide v9, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-direct {v0, v9, v10}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v2, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object/from16 v22, v8

    move-object v8, v2

    move-object v2, v3

    move-wide v3, v6

    move-object/from16 v7, v22

    goto :goto_2

    :cond_2
    :goto_0
    sget v8, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_usage:I

    sget v9, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_data_warning:I

    new-array v10, v11, [Ljava/lang/Object;

    invoke-direct {v0, v5, v6}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v12

    invoke-virtual {v2, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move v5, v8

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_3

    iget-object v6, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v8

    :cond_3
    const v6, 0x1020016

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    sget v5, Lcom/android/systemui/R$id;->usage_text:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget v3, Lcom/android/systemui/R$id;->usage_graph:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/DataUsageGraph;

    iget-wide v4, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    iget-wide v8, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    iget-wide v13, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object v15, v3

    move-wide/from16 v16, v4

    move-wide/from16 v18, v8

    move-wide/from16 v20, v13

    invoke-virtual/range {v15 .. v21}, Lcom/android/systemui/qs/DataUsageGraph;->setLevels(JJJ)V

    sget v4, Lcom/android/systemui/R$id;->usage_carrier_text:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/android/systemui/R$id;->usage_period_text:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/android/systemui/R$id;->usage_info_top_text:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x8

    if-eqz v2, :cond_4

    move v6, v12

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/android/systemui/R$id;->usage_info_bottom_text:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    move v2, v12

    goto :goto_4

    :cond_5
    move v2, v5

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v6, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_7

    iget-wide v0, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_6

    goto :goto_5

    :cond_6
    move v11, v12

    :cond_7
    :goto_5
    if-eqz v11, :cond_8

    goto :goto_6

    :cond_8
    move v12, v5

    :goto_6
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    if-nez v11, :cond_9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget p1, Lcom/android/systemui/R$dimen;->qs_data_usage_text_size:I

    const v0, 0x1020016

    invoke-static {p0, v0, p1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    sget v0, Lcom/android/systemui/R$id;->usage_text:I

    sget v1, Lcom/android/systemui/R$dimen;->qs_data_usage_usage_text_size:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    sget v0, Lcom/android/systemui/R$id;->usage_carrier_text:I

    invoke-static {p0, v0, p1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    sget v0, Lcom/android/systemui/R$id;->usage_info_top_text:I

    invoke-static {p0, v0, p1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    sget v0, Lcom/android/systemui/R$id;->usage_period_text:I

    invoke-static {p0, v0, p1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    sget v0, Lcom/android/systemui/R$id;->usage_info_bottom_text:I

    invoke-static {p0, v0, p1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    return-void
.end method
