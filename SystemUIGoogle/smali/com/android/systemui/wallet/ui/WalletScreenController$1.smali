.class public final Lcom/android/systemui/wallet/ui/WalletScreenController$1;
.super Ljava/lang/Object;
.source "WalletScreenController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallet/ui/WalletScreenController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/ui/WalletScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$1;->this$0:Lcom/android/systemui/wallet/ui/WalletScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$1;->this$0:Lcom/android/systemui/wallet/ui/WalletScreenController;

    iget-object p1, p1, Lcom/android/systemui/wallet/ui/WalletScreenController;->mWalletView:Lcom/android/systemui/wallet/ui/WalletView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController$1;->this$0:Lcom/android/systemui/wallet/ui/WalletScreenController;

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletScreenController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sub-int/2addr p5, p3

    const-string/jumbo p1, "wallet_view_height"

    invoke-interface {p0, p1, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
