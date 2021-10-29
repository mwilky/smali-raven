.class Lcom/android/wm/shell/common/DisplayController$DisplayRecord;
.super Ljava/lang/Object;
.source "DisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/DisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayRecord"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDisplayId:I

.field mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;-><init>()V

    return-void
.end method
