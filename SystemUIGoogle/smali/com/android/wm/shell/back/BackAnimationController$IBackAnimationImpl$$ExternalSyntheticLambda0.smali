.class public final synthetic Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/back/BackAnimationController;

    invoke-virtual {p1}, Lcom/android/wm/shell/back/BackAnimationController;->onBackToLauncherAnimationFinished()V

    return-void

    :goto_0
    check-cast p1, Lcom/android/systemui/assist/ui/EdgeLight;

    sget p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->$r8$clinit:I

    const/4 p0, 0x0

    iput p0, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method