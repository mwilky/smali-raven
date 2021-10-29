.class public Lcom/android/server/pm/PackageManagerService$ScanPartition;
.super Landroid/content/pm/PackagePartitions$SystemPartition;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanPartition"
.end annotation


# instance fields
.field public final scanFlag:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService$ScanPartition;->scanFlagForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ScanPartition;->scanFlag:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/pm/PackageManagerService$ScanPartition;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    iget v0, p2, Lcom/android/server/pm/PackageManagerService$ScanPartition;->scanFlag:I

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ScanPartition;->scanFlag:I

    return-void
.end method

.method private static scanFlagForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)I
    .locals 3

    iget v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine scan flag for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/high16 v0, 0x200000

    return v0

    :pswitch_1
    const/high16 v0, 0x100000

    return v0

    :pswitch_2
    const/high16 v0, 0x40000

    return v0

    :pswitch_3
    const/high16 v0, 0x400000

    return v0

    :pswitch_4
    const/high16 v0, 0x80000

    return v0

    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$ScanPartition;->getFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$ScanPartition;->scanFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
