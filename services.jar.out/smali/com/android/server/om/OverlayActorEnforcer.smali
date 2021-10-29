.class public Lcom/android/server/om/OverlayActorEnforcer;
.super Ljava/lang/Object;
.source "OverlayActorEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    }
.end annotation


# instance fields
.field private final mPackageManager:Lcom/android/server/om/PackageManagerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/om/PackageManagerHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    return-void
.end method

.method static getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/om/OverlayActorEnforcer$ActorState;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "overlay"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_NAMED_ACTORS:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_NAMESPACE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    :cond_2
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    :cond_3
    sget-object v4, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v7, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    :cond_4
    :goto_0
    sget-object v3, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_OVERLAYABLE_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method enforceActor(Landroid/content/om/OverlayInfo;Ljava/lang/String;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/om/OverlayActorEnforcer;->isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not allowed to call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OverlayManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    sparse-switch v4, :sswitch_data_0

    iget-object v6, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v6, v5}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    if-nez v7, :cond_0

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->TARGET_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    :sswitch_0
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    :cond_0
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    :cond_1
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v4}, Lcom/android/server/om/PackageManagerHelper;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_PACKAGES_FOR_UID:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    :cond_2
    invoke-static {v8, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    :cond_3
    iget-object v9, v3, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v10, "android.permission.CHANGE_OVERLAY_PACKAGES"

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v6, v5}, Lcom/android/server/om/PackageManagerHelper;->doesTargetDefineOverlayable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_TARGET_OVERLAYABLE_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :cond_4
    :try_start_1
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v10, v2}, Lcom/android/server/om/PackageManagerHelper;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v10

    :catch_1
    move-exception v0

    sget-object v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ERROR_READING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v10

    :cond_5
    :try_start_3
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v6, v9, v5}, Lcom/android/server/om/PackageManagerHelper;->getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v11, v0

    nop

    if-nez v11, :cond_6

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    :cond_6
    iget-object v12, v11, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_4
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v10, v2}, Lcom/android/server/om/PackageManagerHelper;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    sget-object v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v10

    :cond_7
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0}, Lcom/android/server/om/PackageManagerHelper;->getNamedActors()Ljava/util/Map;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v10

    iget-object v13, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    sget-object v14, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    if-eq v13, v14, :cond_8

    return-object v13

    :cond_8
    iget-object v14, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v15, v14, v5}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    if-nez v15, :cond_9

    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    :cond_9
    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v16

    if-nez v16, :cond_a

    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_PREINSTALLED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    :cond_a
    invoke-static {v8, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    :cond_b
    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_ACTOR:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    :catch_3
    move-exception v0

    sget-object v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->UNABLE_TO_GET_TARGET_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v10

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
