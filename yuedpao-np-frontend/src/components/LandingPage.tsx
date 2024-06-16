import Navbar from "./Navbar";
import { Container, Grid, Card, CardContent, CardMedia, Typography, Button } from '@mui/material';
import { useState, useEffect } from 'react';

interface Product {
    id: number;
    name: string;
    image: string;
    description: string;
    price: string;
}


const LandingPage = () => {

    const [clothingItems, setClothingItems] = useState<Product[]>([]);
    // const clothingItems = [
    //     { id: 1, name: 'T-Shirt', image: 'tshirt.jpg', description: 'Comfortable cotton t-shirt', price: '$19.99' },
    //     { id: 2, name: 'Jeans', image: 'jeans.jpg', description: 'Classic denim jeans', price: '$39.99' },
    //     { id: 3, name: 'Hoodie', image: 'hoodie.jpg', description: 'Warm fleece hoodie', price: '$29.99' },
    //     // Add more items as needed
    // ];
    useEffect(() => {
        fetch('http://localhost:8888/products')
            .then(response => response.json())
            .then((data: Product[]) => setClothingItems(data))
            .catch(error => console.error('Error fetching clothing items:', error));
    }, []);

    return (
        <>
            <Navbar />
            <Container sx={{ py: 4 }}>
                <Grid container spacing={3}>
                    {clothingItems.map(item => (
                        <Grid item key={item.id} xs={12} sm={6} md={4}>
                            <Card>
                                <CardMedia
                                    component="img"
                                    height="368"
                                    image={item.image}
                                    alt={item.name}
                                />
                                <CardContent>
                                    <Typography gutterBottom variant="body2" fontWeight="bold" component="div">
                                        {item.name}
                                    </Typography>
                                    <Typography variant="body2" color="text.secondary">
                                        {item.description}
                                    </Typography>
                                    <Typography variant="body2" color="text.primary">
                                        NPR {item.price}
                                    </Typography>
                                    <Button
                                        variant="contained"
                                        color="primary"
                                        sx={{ bgcolor: '#8DCBFB', '&:hover': { bgcolor: '#6ca3d8' } }}
                                    >
                                        Add to Cart
                                    </Button>
                                </CardContent>
                            </Card>
                        </Grid>
                    ))}
                </Grid>
            </Container>
        </>
    );
};

export default LandingPage;