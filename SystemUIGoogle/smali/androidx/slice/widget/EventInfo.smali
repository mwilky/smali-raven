.class public final Landroidx/slice/widget/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"


# instance fields
.field public actionCount:I

.field public actionIndex:I

.field public actionPosition:I

.field public actionType:I

.field public rowIndex:I

.field public rowTemplateType:I

.field public sliceMode:I

.field public state:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    iput p2, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    iput p3, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    iput p1, p0, Landroidx/slice/widget/EventInfo;->state:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 10

    const-string v0, "mode="

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    sget-object v2, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Landroidx/slice/widget/SliceView$3;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const-string/jumbo v4, "unknown mode: "

    invoke-static {v4, v1}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "MODE SHORTCUT"

    goto :goto_0

    :cond_1
    const-string v1, "MODE LARGE"

    goto :goto_0

    :cond_2
    const-string v1, "MODE SMALL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    const-string v4, "TIME_PICK"

    const-string v5, "DATE_PICK"

    const-string v6, "SELECTION"

    const-string v7, "SLIDER"

    const-string v8, "TOGGLE"

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v9, "unknown action: "

    invoke-static {v9, v1}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_0
    move-object v1, v4

    goto :goto_1

    :pswitch_1
    move-object v1, v5

    goto :goto_1

    :pswitch_2
    move-object v1, v6

    goto :goto_1

    :pswitch_3
    const-string v1, "SEE MORE"

    goto :goto_1

    :pswitch_4
    const-string v1, "CONTENT"

    goto :goto_1

    :pswitch_5
    move-object v1, v7

    goto :goto_1

    :pswitch_6
    const-string v1, "BUTTON"

    goto :goto_1

    :pswitch_7
    move-object v1, v8

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rowTemplateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    packed-switch v1, :pswitch_data_1

    const-string/jumbo v4, "unknown row type: "

    invoke-static {v4, v1}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :pswitch_8
    move-object v4, v5

    goto :goto_2

    :pswitch_9
    move-object v4, v6

    goto :goto_2

    :pswitch_a
    const-string v4, "PROGRESS"

    goto :goto_2

    :pswitch_b
    move-object v4, v7

    goto :goto_2

    :pswitch_c
    move-object v4, v8

    goto :goto_2

    :pswitch_d
    const-string v4, "MESSAGING"

    goto :goto_2

    :pswitch_e
    const-string v4, "GRID"

    goto :goto_2

    :pswitch_f
    const-string v4, "LIST"

    goto :goto_2

    :pswitch_10
    const-string v4, "SHORTCUT"

    :goto_2
    :pswitch_11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rowIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const-string/jumbo v2, "unknown position: "

    invoke-static {v2, v1}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, "CELL"

    goto :goto_3

    :cond_4
    const-string v1, "END"

    goto :goto_3

    :cond_5
    const-string v1, "START"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/slice/widget/EventInfo;->state:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_11
    .end packed-switch
.end method
