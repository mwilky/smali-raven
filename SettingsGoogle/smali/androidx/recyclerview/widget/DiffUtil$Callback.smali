.class public abstract Landroidx/recyclerview/widget/DiffUtil$Callback;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract areContentsTheSame(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldItemPosition",
            "newItemPosition"
        }
    .end annotation
.end method

.method public abstract areItemsTheSame(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldItemPosition",
            "newItemPosition"
        }
    .end annotation
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldItemPosition",
            "newItemPosition"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getNewListSize()I
.end method

.method public abstract getOldListSize()I
.end method
