.class final Lcom/android/server/devicepolicy/Owners$OwnerDto;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OwnerDto"
.end annotation


# instance fields
.field public final admin:Landroid/content/ComponentName;

.field public isAffiliated:Z

.field public final isDeviceOwner:Z

.field public final isProfileOwner:Z

.field public final userId:I


# direct methods
.method private constructor <init>(ILandroid/content/ComponentName;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/devicepolicy/Owners$OwnerDto;->userId:I

    const-string v0, "admin must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners$OwnerDto;->admin:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/Owners$OwnerDto;->isDeviceOwner:Z

    xor-int/lit8 v0, p3, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/Owners$OwnerDto;->isProfileOwner:Z

    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/ComponentName;ZLcom/android/server/devicepolicy/Owners$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/Owners$OwnerDto;-><init>(ILandroid/content/ComponentName;Z)V

    return-void
.end method
