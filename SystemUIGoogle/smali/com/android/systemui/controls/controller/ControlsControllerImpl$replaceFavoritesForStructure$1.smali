.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForStructure$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $structureInfo:Lcom/android/systemui/controls/controller/StructureInfo;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/StructureInfo;Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForStructure$1;->$structureInfo:Lcom/android/systemui/controls/controller/StructureInfo;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForStructure$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForStructure$1;->$structureInfo:Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/Favorites;->replaceControls(Lcom/android/systemui/controls/controller/StructureInfo;)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForStructure$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    return-void
.end method
