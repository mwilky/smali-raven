.class Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryIntentActivitiesResult"
.end annotation


# instance fields
.field public addInstant:Z

.field public answer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sortResult:Z


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->sortResult:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->addInstant:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->result:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->answer:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->answer:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ZZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->sortResult:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->addInstant:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->result:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->answer:Ljava/util/List;

    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->sortResult:Z

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->addInstant:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$QueryIntentActivitiesResult;->result:Ljava/util/List;

    return-void
.end method
