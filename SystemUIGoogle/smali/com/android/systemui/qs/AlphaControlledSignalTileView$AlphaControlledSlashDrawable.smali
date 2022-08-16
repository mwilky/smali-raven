.class public final Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;
.super Lcom/android/systemui/qs/SlashDrawable;
.source "AlphaControlledSignalTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/AlphaControlledSignalTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaControlledSlashDrawable"
.end annotation


# virtual methods
.method public final setDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public final setFinalTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/SlashDrawable;->setDrawableTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
