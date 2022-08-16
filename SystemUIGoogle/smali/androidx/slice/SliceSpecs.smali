.class public final Landroidx/slice/SliceSpecs;
.super Ljava/lang/Object;
.source "SliceSpecs.java"


# static fields
.field public static final BASIC:Landroidx/slice/SliceSpec;

.field public static final LIST:Landroidx/slice/SliceSpec;

.field public static final LIST_V2:Landroidx/slice/SliceSpec;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/slice/SliceSpec;

    const/4 v1, 0x1

    const-string v2, "androidx.slice.BASIC"

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v2, "androidx.slice.LIST"

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    new-instance v0, Landroidx/slice/SliceSpec;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    return-void
.end method
