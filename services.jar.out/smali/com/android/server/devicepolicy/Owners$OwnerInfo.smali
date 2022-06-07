.class Lcom/android/server/devicepolicy/Owners$OwnerInfo;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OwnerInfo"
.end annotation


# instance fields
.field public final admin:Landroid/content/ComponentName;

.field public isOrganizationOwnedDevice:Z

.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public remoteBugreportHash:Ljava/lang/String;

.field public remoteBugreportUri:Ljava/lang/String;

.field public userRestrictionsMigrated:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    return-void
.end method

.method public static readFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    const-string v3, "component"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    nop

    const-string/jumbo v3, "userRestrictionsMigrated"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    nop

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string/jumbo v4, "remoteBugreportUri"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v4, "remoteBugreportHash"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    nop

    const-string v4, "canAccessDeviceIds"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    nop

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    nop

    const-string/jumbo v4, "isPoOrganizationOwnedDevice"

    invoke-interface {v0, v1, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int v18, v3, v17

    if-eqz v12, :cond_1

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v19, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-object/from16 v4, v19

    move-object v5, v11

    move-object v6, v3

    move v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v20, v10

    move/from16 v10, v18

    invoke-direct/range {v4 .. v10}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v19

    :cond_0
    move-object/from16 v20, v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing owner file. Bad component name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DevicePolicyManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v20, v10

    :goto_0
    new-instance v10, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    move-object v3, v10

    move-object v4, v11

    move-object v5, v2

    move v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v18

    invoke-direct/range {v3 .. v9}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v10
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isOrganizationOwnedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public writeToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "package"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "name"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "component"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    const-string/jumbo v2, "userRestrictionsMigrated"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v2, "remoteBugreportUri"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v2, "remoteBugreportHash"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->isOrganizationOwnedDevice:Z

    if-eqz v1, :cond_4

    const-string/jumbo v2, "isPoOrganizationOwnedDevice"

    invoke-interface {p1, v0, v2, v1}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
