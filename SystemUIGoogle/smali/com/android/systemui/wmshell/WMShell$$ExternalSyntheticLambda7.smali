.class public final synthetic Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda7;
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

    iput p1, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Landroid/view/View;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    check-cast p1, Lcom/android/systemui/classifier/FalsingDataProvider$MotionEventListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/classifier/FalsingDataProvider$MotionEventListener;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    check-cast p1, Landroid/view/View$OnClickListener;

    sget v0, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;->$r8$clinit:I

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/wmshell/WMShell;

    check-cast p1, Lcom/android/wm/shell/compatui/CompatUI;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/WMShell;->initCompatUi(Lcom/android/wm/shell/compatui/CompatUI;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->show(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
