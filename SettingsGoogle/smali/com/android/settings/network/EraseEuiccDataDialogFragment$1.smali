.class Lcom/android/settings/network/EraseEuiccDataDialogFragment$1;
.super Ljava/lang/Object;
.source "EraseEuiccDataDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/EraseEuiccDataDialogFragment;->runAsyncWipe(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/EraseEuiccDataDialogFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/network/EraseEuiccDataDialogFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/EraseEuiccDataDialogFragment$1;->this$0:Lcom/android/settings/network/EraseEuiccDataDialogFragment;

    iput-object p2, p0, Lcom/android/settings/network/EraseEuiccDataDialogFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/EraseEuiccDataDialogFragment$1;->val$context:Landroid/content/Context;

    const-string v0, "com.android.settings.network"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
