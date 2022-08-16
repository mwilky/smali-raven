.class public final Lcom/google/android/systemui/columbus/gates/SetupWizard$actionListener$1;
.super Ljava/lang/Object;
.source "SetupWizard.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/actions/Action$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/SetupWizard;-><init>(Landroid/content/Context;Ljava/util/Set;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSetupWizard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetupWizard.kt\ncom/google/android/systemui/columbus/gates/SetupWizard$actionListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/SetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionAvailabilityChanged(Lcom/google/android/systemui/columbus/actions/Action;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/gates/SetupWizard;->exceptions:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/systemui/columbus/actions/Action;

    iget-boolean v2, v2, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lcom/google/android/systemui/columbus/gates/SetupWizard;->exceptionActive:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizard$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/SetupWizard;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizard;->updateBlocking()V

    return-void
.end method
