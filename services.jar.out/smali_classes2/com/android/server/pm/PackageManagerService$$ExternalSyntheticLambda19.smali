.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/pm/PackageSetting;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/pm/PackageSetting;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->f$1:I

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/pm/PackageManagerService;->$r8$lambda$2sj-G2MypmBBbfoKd4A__7Dfa74(Lcom/android/server/pm/PackageSetting;ILjava/util/ArrayList;Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    return-void
.end method
