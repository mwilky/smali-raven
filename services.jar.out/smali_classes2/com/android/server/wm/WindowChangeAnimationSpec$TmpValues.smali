.class public Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
.super Ljava/lang/Object;
.source "WindowChangeAnimationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowChangeAnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TmpValues"
.end annotation


# instance fields
.field public final mFloats:[F

.field public final mTransformation:Landroid/view/animation/Transformation;

.field public final mVecs:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;-><init>()V

    return-void
.end method
