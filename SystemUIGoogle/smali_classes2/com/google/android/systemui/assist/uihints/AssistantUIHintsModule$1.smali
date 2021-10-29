.class Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule$1;
.super Ljava/lang/Object;
.source "AssistantUIHintsModule.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule;->provideActivityStarter(Ldagger/Lazy;)Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$statusBarLazy:Ldagger/Lazy;


# direct methods
.method constructor <init>(Ldagger/Lazy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule$1;->val$statusBarLazy:Ldagger/Lazy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartActivityInfo(Landroid/content/Intent;Z)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "ActivityStarter"

    const-string p1, "Null intent; cannot start activity"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule$1;->val$statusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method
