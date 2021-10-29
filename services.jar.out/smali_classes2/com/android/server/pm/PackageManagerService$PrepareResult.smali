.class Lcom/android/server/pm/PackageManagerService$PrepareResult;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareResult"
.end annotation


# instance fields
.field public final clearCodeCache:Z

.field public final disabledPs:Lcom/android/server/pm/PackageSetting;

.field public final existingPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final originalPs:Lcom/android/server/pm/PackageSetting;

.field public final packageToScan:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

.field public final parseFlags:I

.field public final replace:Z

.field public final scanFlags:I

.field public final system:Z


# direct methods
.method private constructor <init>(ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/ParsedPackage;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->replace:Z

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->scanFlags:I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->parseFlags:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->existingPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->packageToScan:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    iput-boolean p6, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->clearCodeCache:Z

    iput-boolean p7, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->system:Z

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->originalPs:Lcom/android/server/pm/PackageSetting;

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->disabledPs:Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method synthetic constructor <init>(ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/ParsedPackage;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/server/pm/PackageManagerService$PrepareResult;-><init>(ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/ParsedPackage;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method
