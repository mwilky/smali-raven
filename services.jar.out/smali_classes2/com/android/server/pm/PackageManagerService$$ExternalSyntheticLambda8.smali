.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/server/pm/ScanPartition;

    check-cast p1, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-direct {p0, p1}, Lcom/android/server/pm/ScanPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    return-object p0
.end method
