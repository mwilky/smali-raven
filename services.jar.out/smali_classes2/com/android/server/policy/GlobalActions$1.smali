.class public Lcom/android/server/policy/GlobalActions$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-$$Nest$mensureLegacyCreated(Lcom/android/server/policy/GlobalActions;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-$$Nest$fgetmLegacyGlobalActions(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/LegacyGlobalActions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/policy/GlobalActions;)Z

    move-result v1

    iget-object p0, p0, Lcom/android/server/policy/GlobalActions$1;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/GlobalActions;->-$$Nest$fgetmDeviceProvisioned(Lcom/android/server/policy/GlobalActions;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/LegacyGlobalActions;->showDialog(ZZ)V

    return-void
.end method
