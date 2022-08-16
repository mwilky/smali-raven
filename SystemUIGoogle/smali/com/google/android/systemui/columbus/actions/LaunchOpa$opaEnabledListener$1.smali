.class public final Lcom/google/android/systemui/columbus/actions/LaunchOpa$opaEnabledListener$1;
.super Ljava/lang/Object;
.source "LaunchOpa.kt"

# interfaces
.implements Lcom/google/android/systemui/assist/OpaEnabledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/LaunchOpa;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Ljava/util/Set;Lcom/android/systemui/assist/AssistManager;Ldagger/Lazy;Lcom/android/systemui/tuner/TunerService;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/actions/LaunchOpa;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/actions/LaunchOpa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa$opaEnabledListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpaEnabledReceived(Landroid/content/Context;ZZZZ)V
    .locals 2

    const/4 p1, 0x1

    const/4 p5, 0x0

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa$opaEnabledListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    iget-boolean p3, p3, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->enableForAnyAssistant:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p5

    goto :goto_1

    :cond_1
    :goto_0
    move p3, p1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eligible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", opa: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Columbus/LaunchOpa"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa$opaEnabledListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    move p2, p1

    goto :goto_2

    :cond_2
    move p2, p5

    :goto_2
    iput-boolean p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isOpaEnabled:Z

    iget-boolean p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa;->isGestureEnabled:Z

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move p1, p5

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method
