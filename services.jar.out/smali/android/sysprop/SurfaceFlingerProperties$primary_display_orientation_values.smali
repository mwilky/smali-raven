.class public final enum Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;
.super Ljava/lang/Enum;
.source "SurfaceFlingerProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sysprop/SurfaceFlingerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "primary_display_orientation_values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

.field public static final enum ORIENTATION_0:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

.field public static final enum ORIENTATION_180:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

.field public static final enum ORIENTATION_270:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

.field public static final enum ORIENTATION_90:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;


# instance fields
.field private final propValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    const-string v1, "ORIENTATION_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_0:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    new-instance v1, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    const-string v3, "ORIENTATION_90"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_90:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    new-instance v3, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    const-string v5, "ORIENTATION_180"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_180:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    new-instance v5, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    const-string v7, "ORIENTATION_270"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->ORIENTATION_270:Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->$VALUES:[Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->propValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;
    .locals 1

    const-class v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    return-object v0
.end method

.method public static values()[Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;
    .locals 1

    sget-object v0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->$VALUES:[Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    invoke-virtual {v0}, [Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;

    return-object v0
.end method


# virtual methods
.method public getPropValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/sysprop/SurfaceFlingerProperties$primary_display_orientation_values;->propValue:Ljava/lang/String;

    return-object v0
.end method
