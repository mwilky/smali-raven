.class public final Landroidx/leanback/widget/picker/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/picker/DatePicker;

.field public final synthetic val$animation:Z


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/picker/DatePicker;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/picker/DatePicker$1;->this$0:Landroidx/leanback/widget/picker/DatePicker;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/leanback/widget/picker/DatePicker$1;->val$animation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker$1;->this$0:Landroidx/leanback/widget/picker/DatePicker;

    iget-boolean p0, p0, Landroidx/leanback/widget/picker/DatePicker$1;->val$animation:Z

    const/4 v1, 0x3

    new-array v1, v1, [I

    iget v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mColDayIndex:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mColYearIndex:I

    const/4 v5, 0x2

    aput v2, v1, v5

    move v2, v4

    move v6, v2

    :goto_0
    if-ltz v5, :cond_9

    aget v7, v1, v5

    if-gez v7, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-object v8, Landroidx/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    aget v8, v8, v5

    iget-object v9, v0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/picker/PickerColumn;

    :goto_1
    if-eqz v2, :cond_3

    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget v10, v7, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eq v9, v10, :cond_2

    iput v9, v7, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    :goto_2
    move v9, v4

    goto :goto_3

    :cond_2
    move v9, v3

    goto :goto_3

    :cond_3
    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v9

    iget v10, v7, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eq v9, v10, :cond_2

    iput v9, v7, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    goto :goto_2

    :goto_3
    or-int/2addr v9, v3

    if-eqz v6, :cond_5

    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget v11, v7, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    if-eq v10, v11, :cond_4

    iput v10, v7, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    :goto_4
    move v10, v4

    goto :goto_5

    :cond_4
    move v10, v3

    goto :goto_5

    :cond_5
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    iget v11, v7, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    if-eq v10, v11, :cond_4

    iput v10, v7, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    goto :goto_4

    :goto_5
    or-int/2addr v9, v10

    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v10, v11, :cond_6

    move v10, v4

    goto :goto_6

    :cond_6
    move v10, v3

    :goto_6
    and-int/2addr v2, v10

    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v10, v11, :cond_7

    move v10, v4

    goto :goto_7

    :cond_7
    move v10, v3

    :goto_7
    and-int/2addr v6, v10

    if-eqz v9, :cond_8

    aget v9, v1, v5

    invoke-virtual {v0, v9, v7}, Landroidx/leanback/widget/picker/Picker;->setColumnAt(ILandroidx/leanback/widget/picker/PickerColumn;)V

    :cond_8
    aget v7, v1, v5

    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7, v8, p0}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    :goto_8
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
