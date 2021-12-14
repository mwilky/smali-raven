.class Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FindPreferredActivityBodyResult"
.end annotation


# instance fields
.field mChanged:Z

.field mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;-><init>()V

    return-void
.end method
