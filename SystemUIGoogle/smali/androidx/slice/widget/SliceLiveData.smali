.class public final Landroidx/slice/widget/SliceLiveData;
.super Ljava/lang/Object;
.source "SliceLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
    }
.end annotation


# static fields
.field public static final SUPPORTED_SPECS:Landroidx/collection/ArraySet;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/slice/SliceSpec;

    const/4 v1, 0x1

    const-string v2, "androidx.app.slice.BASIC"

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(ILjava/lang/String;)V

    new-instance v2, Landroidx/slice/SliceSpec;

    const-string v3, "androidx.app.slice.LIST"

    invoke-direct {v2, v1, v3}, Landroidx/slice/SliceSpec;-><init>(ILjava/lang/String;)V

    new-instance v3, Landroidx/collection/ArraySet;

    const/4 v4, 0x5

    new-array v4, v4, [Landroidx/slice/SliceSpec;

    sget-object v5, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    aput-object v5, v4, v1

    sget-object v1, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const/4 v0, 0x4

    aput-object v2, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Landroidx/collection/ArraySet;

    return-void
.end method
