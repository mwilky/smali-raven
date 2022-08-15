.class public Lcom/android/server/pm/SettingsXml;
.super Ljava/lang/Object;
.source "SettingsXml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SettingsXml$WriteSectionImpl;,
        Lcom/android/server/pm/SettingsXml$WriteSection;,
        Lcom/android/server/pm/SettingsXml$ReadSectionImpl;,
        Lcom/android/server/pm/SettingsXml$ChildSection;,
        Lcom/android/server/pm/SettingsXml$ReadSection;,
        Lcom/android/server/pm/SettingsXml$Serializer;
    }
.end annotation


# direct methods
.method public static parser(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/SettingsXml$ReadSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;-><init>(Landroid/util/TypedXmlPullParser;)V

    return-object v0
.end method

.method public static serializer(Landroid/util/TypedXmlSerializer;)Lcom/android/server/pm/SettingsXml$Serializer;
    .locals 2

    new-instance v0, Lcom/android/server/pm/SettingsXml$Serializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/SettingsXml$Serializer;-><init>(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml$Serializer-IA;)V

    return-object v0
.end method
