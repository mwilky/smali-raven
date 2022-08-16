.class public final synthetic Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/ViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/ViewController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/util/ViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda13;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/util/ViewController;

    check-cast p0, Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7f1305d2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda13;->f$0:Lcom/android/systemui/util/ViewController;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
