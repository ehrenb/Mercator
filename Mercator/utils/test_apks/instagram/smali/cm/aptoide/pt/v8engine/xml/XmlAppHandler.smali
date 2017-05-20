.class public Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlAppHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;
    }
.end annotation


# instance fields
.field app:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sb:Ljava/lang/StringBuilder;

.field servers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->servers:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 122
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 123
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$1;->$SwitchMap$cm$aptoide$pt$v8engine$xml$XmlAppHandler$Elements:[I

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->lookup(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "path"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "size"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :pswitch_3
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "md5sum"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :pswitch_4
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "name"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :pswitch_5
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "apkid"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :pswitch_6
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->servers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :pswitch_7
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "main_path"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :pswitch_8
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "main_md5sum"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :pswitch_9
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "main_filesize"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :pswitch_a
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "main_filename"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 97
    :pswitch_b
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "patch_path"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 101
    :pswitch_c
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "patch_md5sum"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 105
    :pswitch_d
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "patch_filesize"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 109
    :pswitch_e
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    const-string v1, "patch_filename"

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public getApp()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    return-object v0
.end method

.method public getServers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->servers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 26
    sget-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$1;->$SwitchMap$cm$aptoide$pt$v8engine$xml$XmlAppHandler$Elements:[I

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->lookup(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 36
    :goto_0
    :pswitch_0
    return-void

    .line 28
    :pswitch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;->app:Ljava/util/HashMap;

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
