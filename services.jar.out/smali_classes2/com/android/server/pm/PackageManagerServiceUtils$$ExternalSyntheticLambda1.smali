.class public final synthetic Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$sortPackagesByUsageDate$1(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)I

    move-result p1

    return p1
.end method
