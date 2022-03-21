.class public Lcom/android/settings/wifi/WifiConnectListener;
.super Ljava/lang/Object;
.source "WifiConnectListener.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConnectListener;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    const p1, 0x7f041670

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
