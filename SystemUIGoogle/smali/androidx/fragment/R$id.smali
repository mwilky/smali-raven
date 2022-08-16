.class public final Landroidx/fragment/R$id;
.super Ljava/lang/Object;
.source "R.java"


# direct methods
.method public static getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method
