.class public final synthetic Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/android/systemui/plugins/qs/QS;

    sget p0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->$r8$clinit:I

    return-void

    :pswitch_1
    check-cast p1, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    sget p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->$r8$clinit:I

    invoke-interface {p1}, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;->onStateChanged()V

    return-void

    :pswitch_2
    check-cast p1, Lcom/android/systemui/classifier/FalsingClassifier;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier;->onSessionStarted()V

    return-void

    :pswitch_3
    check-cast p1, Lcom/android/systemui/unfold/FoldStateLoggingProvider;

    invoke-interface {p1}, Lcom/android/systemui/unfold/FoldStateLoggingProvider;->init()V

    return-void

    :goto_0
    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedController;

    sget p0, Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
