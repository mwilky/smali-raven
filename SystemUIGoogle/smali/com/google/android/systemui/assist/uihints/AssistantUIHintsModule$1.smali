.class public final Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule$1;
.super Ljava/lang/Object;
.source "AssistantUIHintsModule.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;


# instance fields
.field public final synthetic val$centralSurfacesLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule$1;->val$centralSurfacesLazy:Ldagger/Lazy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartActivityInfo(Landroid/content/Intent;Z)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "ActivityStarter"

    const-string p1, "Null intent; cannot start activity"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule$1;->val$centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method
