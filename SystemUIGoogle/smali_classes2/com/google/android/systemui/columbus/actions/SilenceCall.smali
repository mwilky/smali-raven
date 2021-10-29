.class public final Lcom/google/android/systemui/columbus/actions/SilenceCall;
.super Lcom/google/android/systemui/columbus/actions/Action;
.source "SilenceCall.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/SilenceCall$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/SilenceCall$Companion;


# instance fields
.field private final gateListener:Lcom/google/android/systemui/columbus/actions/SilenceCall$gateListener$1;

.field private isPhoneRinging:Z

.field private final phoneStateListener:Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;

.field private final silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

.field private final tag:Ljava/lang/String;

.field private final telecomManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/telecom/TelecomManager;",
            ">;"
        }
    .end annotation
.end field

.field private final telephonyListenerManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final telephonyManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/SilenceCall$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/SilenceCall$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->Companion:Lcom/google/android/systemui/columbus/actions/SilenceCall$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;",
            "Ldagger/Lazy<",
            "Landroid/telecom/TelecomManager;",
            ">;",
            "Ldagger/Lazy<",
            "Landroid/telephony/TelephonyManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "silenceAlertsDisabled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telecomManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telephonyManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telephonyListenerManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telecomManager:Ldagger/Lazy;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telephonyManager:Ldagger/Lazy;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telephonyListenerManager:Ldagger/Lazy;

    const-string p1, "Columbus/SilenceCall"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->tag:Ljava/lang/String;

    new-instance p1, Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/SilenceCall;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->phoneStateListener:Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/actions/SilenceCall$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/SilenceCall$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/SilenceCall;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->gateListener:Lcom/google/android/systemui/columbus/actions/SilenceCall$gateListener$1;

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/SilenceCall;->updatePhoneStateListener()V

    return-void
.end method

.method public static final synthetic access$isPhoneRinging(Lcom/google/android/systemui/columbus/actions/SilenceCall;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/actions/SilenceCall;->isPhoneRinging(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setPhoneRinging$p(Lcom/google/android/systemui/columbus/actions/SilenceCall;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->isPhoneRinging:Z

    return-void
.end method

.method public static final synthetic access$updateAvailable(Lcom/google/android/systemui/columbus/actions/SilenceCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/SilenceCall;->updateAvailable()V

    return-void
.end method

.method public static final synthetic access$updatePhoneStateListener(Lcom/google/android/systemui/columbus/actions/SilenceCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/SilenceCall;->updatePhoneStateListener()V

    return-void
.end method

.method private final isPhoneRinging(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final updateAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->isPhoneRinging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method

.method private final updatePhoneStateListener()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telephonyListenerManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->phoneStateListener:Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->removeCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telephonyListenerManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->phoneStateListener:Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telephonyManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/actions/SilenceCall;->isPhoneRinging(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->isPhoneRinging:Z

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/SilenceCall;->updateAvailable()V

    return-void
.end method


# virtual methods
.method public getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telecomManager:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [isPhoneRinging -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->isPhoneRinging:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
