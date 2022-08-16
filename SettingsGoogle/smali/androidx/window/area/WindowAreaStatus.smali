.class public final Landroidx/window/area/WindowAreaStatus;
.super Ljava/lang/Object;
.source "WindowAreaStatus.kt"


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/area/WindowAreaStatus$Companion;
    }
.end annotation


# static fields
.field public static final AVAILABLE:Landroidx/window/area/WindowAreaStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/window/area/WindowAreaStatus$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNAVAILABLE:Landroidx/window/area/WindowAreaStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UNSUPPORTED:Landroidx/window/area/WindowAreaStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/area/WindowAreaStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/area/WindowAreaStatus;->Companion:Landroidx/window/area/WindowAreaStatus$Companion;

    new-instance v0, Landroidx/window/area/WindowAreaStatus;

    const-string v1, "UNSUPPORTED"

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/area/WindowAreaStatus;->UNSUPPORTED:Landroidx/window/area/WindowAreaStatus;

    new-instance v0, Landroidx/window/area/WindowAreaStatus;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/area/WindowAreaStatus;->UNAVAILABLE:Landroidx/window/area/WindowAreaStatus;

    new-instance v0, Landroidx/window/area/WindowAreaStatus;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1}, Landroidx/window/area/WindowAreaStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/window/area/WindowAreaStatus;->AVAILABLE:Landroidx/window/area/WindowAreaStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/area/WindowAreaStatus;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public static final translate$window_release(I)Landroidx/window/area/WindowAreaStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Landroidx/window/area/WindowAreaStatus;->Companion:Landroidx/window/area/WindowAreaStatus$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/area/WindowAreaStatus$Companion;->translate$window_release(I)Landroidx/window/area/WindowAreaStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Landroidx/window/area/WindowAreaStatus;->mDescription:Ljava/lang/String;

    return-object p0
.end method
