.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;->f$0:I

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;->f$1:Z

    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;->f$2:Z

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/pm/PackageManagerService;->$r8$lambda$BnwvzELhaLFkkCG0Sw4ME6XFBS0(IZZLcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method
