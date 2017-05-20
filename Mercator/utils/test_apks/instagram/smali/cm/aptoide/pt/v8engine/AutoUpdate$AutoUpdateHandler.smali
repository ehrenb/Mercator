.class Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "AutoUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/AutoUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoUpdateHandler"
.end annotation


# instance fields
.field info:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

.field private sb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcm/aptoide/pt/v8engine/AutoUpdate;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/AutoUpdate;)V
    .locals 1

    .prologue
    .line 194
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->this$0:Lcm/aptoide/pt/v8engine/AutoUpdate;

    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    .line 196
    new-instance v0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->info:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcm/aptoide/pt/v8engine/AutoUpdate;Lcm/aptoide/pt/v8engine/AutoUpdate$1;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;-><init>(Lcm/aptoide/pt/v8engine/AutoUpdate;)V

    return-void
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;)Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->getAutoUpdateInfo()Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAutoUpdateInfo()Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->info:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    return-object v0
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
    .line 229
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->characters([CII)V

    .line 230
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 231
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "versionCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->info:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->vercode:I

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->info:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->this$0:Lcm/aptoide/pt/v8engine/AutoUpdate;

    # getter for: Lcm/aptoide/pt/v8engine/AutoUpdate;->activity:Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;
    invoke-static {v1}, Lcm/aptoide/pt/v8engine/AutoUpdate;->access$200(Lcm/aptoide/pt/v8engine/AutoUpdate;)Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/activity/AptoideBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->packageName:Ljava/lang/String;

    .line 226
    return-void

    .line 216
    :cond_1
    const-string v0, "uri"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->info:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->path:Ljava/lang/String;

    goto :goto_0

    .line 218
    :cond_2
    const-string v0, "md5"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->info:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->md5:Ljava/lang/String;

    goto :goto_0

    .line 220
    :cond_3
    const-string v0, "minSdk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->info:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->minsdk:I

    goto :goto_0

    .line 222
    :cond_4
    const-string v0, "minAptVercode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->info:Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->minAptoideVercode:I

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/ext/DefaultHandler2;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 207
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateHandler;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 208
    return-void
.end method
