.class public final synthetic Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;

    check-cast p1, Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/systemui/dreams/complication/ComplicationViewModel;->mId:Lcom/android/systemui/dreams/complication/ComplicationId;

    iget-object v1, p1, Lcom/android/systemui/dreams/complication/ComplicationViewModel;->mComplication:Lcom/android/systemui/dreams/complication/Complication;

    invoke-interface {v1, p1}, Lcom/android/systemui/dreams/complication/Complication;->createView(Lcom/android/systemui/dreams/complication/ComplicationViewModel;)Lcom/android/systemui/dreams/complication/Complication$ViewHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;->mComplications:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/android/systemui/dreams/complication/Complication$ViewHolder;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "View for complication "

    invoke-static {v2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p1, p1, Lcom/android/systemui/dreams/complication/ComplicationViewModel;->mComplication:Lcom/android/systemui/dreams/complication/Complication;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already has a parent. Make sure not to reuse complication views!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ComplicationHostViewController"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;->mLayoutEngine:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;

    invoke-interface {v1}, Lcom/android/systemui/dreams/complication/Complication$ViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v1}, Lcom/android/systemui/dreams/complication/Complication$ViewHolder;->getLayoutParams()Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " addComplication"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ComplicationLayoutEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->removeComplication(Lcom/android/systemui/dreams/complication/ComplicationId;)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iget v8, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mMargin:I

    iget v1, v4, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->mPosition:I

    iget-object v2, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mPositions:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mPositions:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;

    invoke-direct {v7}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;-><init>()V

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mPositions:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v4, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->mDirection:I

    iget-object v3, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionGroups:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionGroups:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;

    invoke-direct {v9, v1}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;-><init>(Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;)V

    invoke-virtual {v3, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionGroups:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;

    move-object v2, v9

    move-object v3, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;-><init>(Landroid/view/View;Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;ILcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$Parent;I)V

    iget-object v2, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v2, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v1, v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->mParent:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

    check-cast v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;

    invoke-virtual {v1}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;->onEntriesChanged()V

    iget-object v1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;->mLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    check-cast p1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftButton:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    instance-of p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultLeftButton;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLeftIsVoiceAssist:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    return-void

    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    sget p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
