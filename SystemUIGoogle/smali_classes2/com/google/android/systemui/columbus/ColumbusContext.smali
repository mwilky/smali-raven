.class public final Lcom/google/android/systemui/columbus/ColumbusContext;
.super Ljava/lang/Object;
.source "ColumbusContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusContext$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/ColumbusContext$Companion;


# instance fields
.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusContext;->Companion:Lcom/google/android/systemui/columbus/ColumbusContext$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusContext;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private final isSupportedDevice()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusContext;->packageManager:Landroid/content/pm/PackageManager;

    const-string v0, "com.google.android.feature.PIXEL_2020_EXPERIENCE"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/ColumbusContext;->isSupportedDevice()Z

    move-result p0

    return p0
.end method
