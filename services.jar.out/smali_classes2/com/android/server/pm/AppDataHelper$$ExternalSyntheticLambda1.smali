.class public final synthetic Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppDataHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/os/CreateAppDataArgs;

.field public final synthetic f$6:Lcom/android/server/pm/PackageSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/AppDataHelper;

    iput-object p2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iput p4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$4:I

    iput-object p6, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$5:Landroid/os/CreateAppDataArgs;

    iput-object p7, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$6:Lcom/android/server/pm/PackageSetting;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/AppDataHelper;

    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget v3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$4:I

    iget-object v5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$5:Landroid/os/CreateAppDataArgs;

    iget-object v6, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;->f$6:Lcom/android/server/pm/PackageSetting;

    move-object v7, p1

    check-cast v7, Ljava/lang/Long;

    move-object v8, p2

    check-cast v8, Ljava/lang/Throwable;

    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/AppDataHelper;->$r8$lambda$7mLyUTHPqoRu_2W4NFPo6V33j6k(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Ljava/lang/Long;Ljava/lang/Throwable;)V

    return-void
.end method
