.class Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;
.super Landroid/database/ContentObserver;
.source "QuickAccessWalletController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->setupWalletPreferenceObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;


# direct methods
.method public static synthetic $r8$lambda$W2inK8V-uqSAACX8z7Gihdu_oPY(Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;->lambda$onChange$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    invoke-virtual {p0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->updateWalletPreference()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;->this$0:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    invoke-static {p1}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController;->access$000(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/controller/QuickAccessWalletController$2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
