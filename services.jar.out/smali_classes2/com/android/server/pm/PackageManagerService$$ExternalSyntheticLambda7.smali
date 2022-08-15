.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:[I

.field public final synthetic f$7:[I

.field public final synthetic f$8:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$2:Z

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$3:Ljava/util/ArrayList;

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$4:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$6:[I

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$7:[I

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$8:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$2:Z

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$3:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$4:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$6:[I

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$7:[I

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda7;->f$8:Landroid/util/SparseArray;

    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService;->$r8$lambda$aGKeZfeL6OlKEqMuNemJPfF8T04(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V

    return-void
.end method
