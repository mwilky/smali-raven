.class public Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;
.super Landroid/widget/ImageView;
.source "ShortcutBarButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    const/4 p0, 0x1

    return p0
.end method
