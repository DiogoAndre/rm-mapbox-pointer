class MapController < UIViewController

  def viewDidLoad
      #mapview = MGLMapView.alloc.initWithFrame(UIScreen.mainScreen.bounds)
      self.view = MGLMapView.alloc.initWithFrame(UIScreen.mainScreen.bounds)
      self.view.setCenterCoordinate([40.7326808, -73.9843407], zoomLevel: 12, animated: false)
      self.view.delegate = self
  end

  def viewDidAppear(animated=true)
    super
    hello = MGLPointAnnotation.alloc.init
    hello.coordinate = [40.7326808, -73.9843407]
    hello.title = "Hello world!"
    hello.subtitle = "Welcome to my marker"

    self.view.addAnnotation(hello)

    coordinates = Pointer.new(CLLocationCoordinate2D.type, 4)
    coordinates[0] = [38.790339, -77.040583]
    coordinates[1] = [38.893219, -77.172304]
    coordinates[2] = [38.995946, -77.040947]
    coordinates[3] = [38.892829, -76.909229]

    self.view.setVisibleCoordinates(coordinates,count: 4, edgePadding: UIEdgeInsetsZero, animated: false)

  end
end