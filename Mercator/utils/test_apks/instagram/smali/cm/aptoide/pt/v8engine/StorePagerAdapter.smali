.class public Lcm/aptoide/pt/v8engine/StorePagerAdapter;
.super Landroid/support/v4/app/ac;
.source "StorePagerAdapter.java"


# instance fields
.field private final availableEventsMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcm/aptoide/pt/model/v7/Event$Name;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private storeId:J

.field private storeTheme:Ljava/lang/String;

.field private final tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/y;Lcm/aptoide/pt/model/v7/store/GetStore;)V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v4/app/ac;-><init>(Landroid/support/v4/app/y;)V

    .line 25
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->availableEventsMap:Ljava/util/EnumMap;

    .line 31
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/store/GetStore;->getNodes()Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;->getData()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->storeId:J

    .line 32
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/store/GetStore;->getNodes()Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getTabs()Lcm/aptoide/pt/model/v7/store/GetStoreTabs;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs;->getList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->tabs:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->tabs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->translateTabs(Ljava/util/List;)V

    .line 34
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/store/GetStore;->getNodes()Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;->getData()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0xf

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/store/GetStore;->getNodes()Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;->getData()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->storeTheme:Ljava/lang/String;

    .line 37
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->validateGetStore()V

    .line 39
    invoke-direct {p0, p2}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->fillAvailableEventsMap(Lcm/aptoide/pt/model/v7/store/GetStore;)V

    .line 40
    return-void
.end method

.method private caseAPI(Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->getEvent()Lcm/aptoide/pt/model/v7/Event;

    move-result-object v0

    .line 93
    sget-object v1, Lcm/aptoide/pt/v8engine/StorePagerAdapter$1;->$SwitchMap$cm$aptoide$pt$model$v7$Event$Name:[I

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Event$Name;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 98
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->storeTheme:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreTabGridRecyclerFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    .line 96
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Event;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->storeTheme:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppsTimelineFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private caseClient(Lcm/aptoide/pt/model/v7/Event;Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 104
    sget-object v0, Lcm/aptoide/pt/v8engine/StorePagerAdapter$1;->$SwitchMap$cm$aptoide$pt$model$v7$Event$Name:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Event$Name;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fragment type not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :pswitch_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newUpdatesFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :pswitch_1
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newDownloadsFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_2
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 111
    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->getLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->storeTheme:Ljava/lang/String;

    invoke-virtual {p2}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSubscribedStoresFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private caseV3(Lcm/aptoide/pt/model/v7/Event;)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 119
    sget-object v0, Lcm/aptoide/pt/v8engine/StorePagerAdapter$1;->$SwitchMap$cm$aptoide$pt$model$v7$Event$Name:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Event$Name;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fragment type not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    iget-wide v2, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->storeId:J

    invoke-interface {v0, v2, v3}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newLatestReviewsFragment(J)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0

    .line 119
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private fillAvailableEventsMap(Lcm/aptoide/pt/model/v7/store/GetStore;)V
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/GetStore;->getNodes()Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getTabs()Lcm/aptoide/pt/model/v7/store/GetStoreTabs;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs;->getList()Ljava/util/List;

    move-result-object v2

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 61
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->getEvent()Lcm/aptoide/pt/model/v7/Event;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->containsEventName(Lcm/aptoide/pt/model/v7/Event$Name;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->availableEventsMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method private translateTabs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;

    .line 44
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcm/aptoide/pt/v8engine/util/Translator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method private validateGetStore()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;

    .line 52
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->getEvent()Lcm/aptoide/pt/model/v7/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->getEvent()Lcm/aptoide/pt/model/v7/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Event;->getType()Lcm/aptoide/pt/model/v7/Event$Type;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 56
    :cond_2
    return-void
.end method


# virtual methods
.method public containsEventName(Lcm/aptoide/pt/model/v7/Event$Name;)Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->availableEventsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventName(I)Lcm/aptoide/pt/model/v7/Event$Name;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->getEvent()Lcm/aptoide/pt/model/v7/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v0

    return-object v0
.end method

.method public getEventNamePosition(Lcm/aptoide/pt/model/v7/Event$Name;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->availableEventsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 141
    if-nez v0, :cond_0

    .line 142
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 144
    :cond_0
    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;

    .line 76
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->getEvent()Lcm/aptoide/pt/model/v7/Event;

    move-result-object v1

    .line 78
    sget-object v2, Lcm/aptoide/pt/v8engine/StorePagerAdapter$1;->$SwitchMap$cm$aptoide$pt$model$v7$Event$Type:[I

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Event;->getType()Lcm/aptoide/pt/model/v7/Event$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Event$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fragment type not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_0
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->caseAPI(Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->caseClient(Lcm/aptoide/pt/model/v7/Event;Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->caseV3(Lcm/aptoide/pt/model/v7/Event;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreTabs$Tab;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
