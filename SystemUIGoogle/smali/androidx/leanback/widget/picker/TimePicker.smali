.class public Landroidx/leanback/widget/picker/TimePicker;
.super Landroidx/leanback/widget/picker/Picker;
.source "TimePicker.java"


# instance fields
.field public mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public mColAmPmIndex:I

.field public mColHourIndex:I

.field public mColMinuteIndex:I

.field public final mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

.field public mCurrentAmPmIndex:I

.field public mCurrentHour:I

.field public mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public mIs24hFormat:Z

.field public mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public mTimePickerFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    const p3, 0x7f0405bc

    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    new-instance v0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    invoke-direct {v0, p3}, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    sget-object v3, Landroidx/leanback/R$styleable;->lbTimePicker:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    const/4 p1, 0x3

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto/16 :goto_d

    :cond_0
    iput-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p3

    if-ne p3, v1, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    const/16 v2, 0x61

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v4, "a"

    if-ltz v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v5, "m"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, p2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v1

    :goto_2
    if-eqz p3, :cond_4

    const-string p3, "mh"

    goto :goto_3

    :cond_4
    const-string p3, "hm"

    :goto_3
    iget-boolean v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_6

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_5
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x7

    new-array v6, v5, [C

    fill-array-data v6, :array_0

    move v7, p2

    move v8, v7

    move v9, v8

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_f

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_7

    goto :goto_a

    :cond_7
    const/16 v11, 0x27

    if-ne v10, v11, :cond_9

    if-nez v8, :cond_8

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v8, v1

    goto :goto_a

    :cond_8
    move v8, p2

    goto :goto_a

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_a
    move v11, p2

    :goto_7
    if-ge v11, v5, :cond_c

    aget-char v5, v6, v11

    if-ne v10, v5, :cond_b

    move v5, v1

    goto :goto_8

    :cond_b
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x7

    goto :goto_7

    :cond_c
    move v5, p2

    :goto_8
    if-eqz v5, :cond_d

    if-eq v10, v9, :cond_e

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_9

    :cond_d
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    :goto_9
    move v9, v10

    :goto_a
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x7

    goto :goto_6

    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    if-ne v0, v4, :cond_23

    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v0, v0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    iput-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iput-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iput-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iput v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    iput v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, p2

    :goto_b
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_15

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x41

    if-eq v4, v5, :cond_12

    const/16 v5, 0x48

    if-eq v4, v5, :cond_11

    const/16 v5, 0x4d

    if-ne v4, v5, :cond_10

    new-instance v4, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v4}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v5, v5, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->minutes:[Ljava/lang/String;

    iput-object v5, v4, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    goto :goto_c

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid time picker format."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance v4, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v4}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v5, v5, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->hours24:[Ljava/lang/String;

    iput-object v5, v4, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    goto :goto_c

    :cond_12
    new-instance v4, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v4}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v5, v5, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->ampm:[Ljava/lang/String;

    iput-object v5, v4, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iget v5, v4, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eqz v5, :cond_13

    iput p2, v4, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    :cond_13
    iget v5, v4, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    if-eq v1, v5, :cond_14

    iput v1, v4, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    :cond_14
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/picker/Picker;->setColumns(Ljava/util/ArrayList;)V

    :goto_d
    iget-object p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    xor-int/lit8 v2, v0, 0x1

    iget v4, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eq v2, v4, :cond_16

    iput v2, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    :cond_16
    const/16 v2, 0x17

    const/16 v4, 0xc

    if-eqz v0, :cond_17

    move v0, v2

    goto :goto_e

    :cond_17
    move v0, v4

    :goto_e
    iget v5, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    if-eq v0, v5, :cond_18

    iput v0, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    :cond_18
    iget-object p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget v0, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eqz v0, :cond_19

    iput p2, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    :cond_19
    const/16 v0, 0x3b

    iget v5, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    if-eq v0, v5, :cond_1a

    iput v0, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    :cond_1a
    iget-object p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    if-eqz p3, :cond_1c

    iget v5, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eqz v5, :cond_1b

    iput p2, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    :cond_1b
    iget v5, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    if-eq v1, v5, :cond_1c

    iput v1, p3, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    :cond_1c
    if-eqz p1, :cond_22

    iget-object p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object p1, p1, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-static {v3, p1}, Landroidx/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p3, 0xb

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ltz p3, :cond_21

    if-gt p3, v2, :cond_21

    iput p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    iget-boolean v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-nez v2, :cond_1f

    if-lt p3, v4, :cond_1d

    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    if-le p3, v4, :cond_1e

    sub-int/2addr p3, v4

    iput p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    goto :goto_f

    :cond_1d
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    if-nez p3, :cond_1e

    iput v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    :cond_1e
    :goto_f
    if-nez v2, :cond_1f

    iget p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iget v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    invoke-virtual {p0, p3, v1, p2}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    :cond_1f
    iget p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    iget v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    invoke-virtual {p0, p3, v1, p2}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ltz p1, :cond_20

    if-gt p1, v0, :cond_20

    iget p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    invoke-virtual {p0, p3, p1, p2}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    iget-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-nez p1, :cond_22

    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iget p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    invoke-virtual {p0, p1, p3, p2}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    goto :goto_10

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "minute: "

    const-string p3, " is not in [0-59] range."

    invoke-static {p2, p1, p3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hour: "

    const-string p2, " is not in [0-23] range in"

    invoke-static {p1, p3, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_10
    return-void

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Separators size: "

    invoke-static {p1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " must equal the size of timeFieldsPattern: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + 1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    nop

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
        0x6ds
        0x4ds
        0x61s
    .end array-data
.end method


# virtual methods
.method public final getBestHourMinutePattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v0, v0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    iget-boolean p0, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz p0, :cond_0

    const-string p0, "Hma"

    goto :goto_0

    :cond_0
    const-string p0, "hma"

    :goto_0
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "h:mma"

    :cond_1
    return-object p0
.end method

.method public final onColumnValueChanged(II)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    if-ne p1, v0, :cond_0

    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    if-ne p1, v0, :cond_2

    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid column index."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
