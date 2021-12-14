.class public Lcom/android/systemui/charging/WirelessChargingLayout;
.super Landroid/widget/FrameLayout;
.source "WirelessChargingLayout.java"


# instance fields
.field private mRippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/charging/WirelessChargingLayout;)Lcom/android/systemui/statusbar/charging/ChargingRippleView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    sget v7, Lcom/android/systemui/R$style;->ChargingAnim_WallpaperBackground:I

    if-eqz p5, :cond_1

    sget v7, Lcom/android/systemui/R$style;->ChargingAnim_DarkBackground:I

    :cond_1
    new-instance v8, Landroid/view/ContextThemeWrapper;

    move-object/from16 v9, p1

    invoke-direct {v8, v9, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget v7, Lcom/android/systemui/R$layout;->wireless_charging_layout:I

    invoke-static {v8, v7, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->wireless_charging_percentage:I

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v10, 0x0

    if-eq v2, v3, :cond_2

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    int-to-float v2, v2

    div-float/2addr v2, v8

    float-to-double v11, v2

    invoke-virtual {v3, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$integer;->wireless_charging_fade_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/systemui/R$integer;->wireless_charging_fade_duration:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/android/systemui/R$dimen;->wireless_charging_anim_battery_level_text_size_start:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/android/systemui/R$dimen;->wireless_charging_anim_battery_level_text_size_end:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v6, :cond_3

    const/high16 v16, 0x3f400000    # 0.75f

    goto :goto_1

    :cond_3
    move/from16 v16, v15

    :goto_1
    mul-float v14, v14, v16

    const/4 v8, 0x2

    new-array v10, v8, [F

    aput v13, v10, v5

    aput v14, v10, v4

    const-string/jumbo v4, "textSize"

    invoke-static {v7, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v8, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v10, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/systemui/R$integer;->wireless_charging_battery_level_text_scale_animation_duration:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move/from16 v17, v8

    int-to-long v8, v5

    invoke-virtual {v10, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v8, v5, [F

    fill-array-data v8, :array_0

    const-string v5, "alpha"

    invoke-static {v7, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v18, v4

    sget v4, Lcom/android/systemui/R$integer;->wireless_charging_battery_level_text_opacity_duration:I

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move/from16 v19, v14

    int-to-long v14, v15

    invoke-virtual {v8, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/android/systemui/R$integer;->wireless_charging_anim_opacity_offset:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move/from16 v20, v15

    int-to-long v14, v14

    invoke-virtual {v8, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v14, 0x2

    new-array v15, v14, [F

    fill-array-data v15, :array_1

    invoke-static {v7, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v15, 0x3

    move-wide/from16 v21, v2

    new-array v2, v15, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    const/4 v3, 0x2

    aput-object v7, v2, v3

    invoke-virtual {v14, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    const-string v7, "backgroundColor"

    invoke-static {v0, v7, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move v8, v4

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v10, 0x2

    new-array v15, v10, [I

    fill-array-data v15, :array_3

    invoke-static {v0, v7, v15}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x4b0

    invoke-virtual {v7, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v10, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v2, v4, v10

    const/4 v2, 0x1

    aput-object v7, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    sget v2, Lcom/android/systemui/R$id;->wireless_charging_ripple:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    iput-object v2, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    new-instance v2, Lcom/android/systemui/charging/WirelessChargingLayout$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/charging/WirelessChargingLayout$1;-><init>(Lcom/android/systemui/charging/WirelessChargingLayout;)V

    iget-object v3, v0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-virtual {v3, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    if-nez v6, :cond_4

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_4
    sget v2, Lcom/android/systemui/R$id;->reverse_wireless_charging_percentage:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v4

    int-to-float v1, v1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v1, v6

    float-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v4, 0x2

    new-array v6, v4, [F

    aput v13, v6, v3

    const/4 v3, 0x1

    aput v19, v6, v3

    move-object/from16 v3, v18

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v1, v1, v1, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v6, v17

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    fill-array-data v1, :array_4

    invoke-static {v2, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v6, v20

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 p2, v14

    int-to-long v13, v4

    invoke-virtual {v1, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v4, 0x2

    new-array v7, v4, [F

    fill-array-data v7, :array_5

    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v13, v21

    invoke-virtual {v2, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v3, v10, v15

    const/4 v3, 0x1

    aput-object v1, v10, v3

    aput-object v2, v10, v4

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget v1, Lcom/android/systemui/R$id;->reverse_wireless_charging_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    move/from16 v2, v19

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0, v15, v0, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-array v0, v4, [F

    fill-array-data v0, :array_6

    invoke-static {v1, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_7

    invoke-static {v1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual/range {p2 .. p2}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x4c000000    # 3.3554432E7f
    .end array-data

    :array_3
    .array-data 4
        0x4c000000    # 3.3554432E7f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 6

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1010435

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->setColor(I)V

    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    new-instance v3, Landroid/graphics/PointF;

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->setOrigin(Landroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingLayout;->mRippleView:Lcom/android/systemui/statusbar/charging/ChargingRippleView;

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/charging/ChargingRippleView;->setRadius(F)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method
